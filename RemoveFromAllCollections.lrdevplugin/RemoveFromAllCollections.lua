local LrApplication = import "LrApplication"
local LrTasks = import "LrTasks"
local LrDialogs = import "LrDialogs"

LrTasks.startAsyncTask(function()
    local catalog = LrApplication.activeCatalog()
    local selectedPhotos = catalog:getTargetPhotos()

    if #selectedPhotos == 0 then
        LrDialogs.message("No photos selected", "Please select at least one photo.", "info")
        return
    end

    catalog:withWriteAccessDo("Remove from All Collections", function()
        for _, photo in ipairs(selectedPhotos) do
            local collections = photo:getContainedCollections()  -- Get only relevant collections

            for _, collection in ipairs(collections) do
                if not collection:isSmartCollection() then  -- Smart collections cannot have photos removed manually
                    collection:removePhotos({photo})
                end
            end
        end
    end)

    LrDialogs.message("Done", "Selected photos removed from all collections.", "info")
end)