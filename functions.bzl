def get_proj_policy(name):
    if name == "HelloBazel":
        return "hello allowed"
    else:
        return "hello not allowed"
