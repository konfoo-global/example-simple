fn find_clay(option_value) {
    not_null(option_value);
    let default_code = `${to_upper(option_value)}-01`;
    let matches = group_by("products", "default_code", default_code);

    // This could technically return the Odoo product ID directly, but for demonstration we use default_code.
    if matches != () && len(matches) > 0 {
        return matches[0]["default_code"];
    }
    return ();
}
