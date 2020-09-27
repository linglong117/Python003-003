

#pip install pysnowflake

# 样例：4361106750091296769
import snowflake.client

def get_snowflake_uuid():
    guid = snowflake.client.get_guid()
    return guid


for i in range(0,10):
    guid = get_snowflake_uuid()
    print(f"guid-> {guid}")

# 4407781727800393729