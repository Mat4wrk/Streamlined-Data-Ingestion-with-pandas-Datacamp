# Flatten businesses records and set underscore separators
flat_cafes = json_normalize(data["businesses"],
                  	    sep="_")
# View the data
print(flat_cafes.head())


# Specify record path to get categories data
flat_cafes = json_normalize(data["businesses"],
                            sep="_",
                    	    record_path="categories")
# View the data
print(flat_cafes.head())


# Load other business attributes and set meta prefix
flat_cafes = json_normalize(data["businesses"],
                            sep="_",
                    	    record_path="categories",
                    	    meta=["name",
				  "alias", 
                                  "rating",  
                              	  ["coordinates", "latitude"], 
                          	  ["coordinates", "longitude"]],
                    	    meta_prefix="biz_")
# View the data
print(flat_cafes.head())
