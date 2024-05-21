function _tide_item_node
    # test -e package.json && _tide_print_item node $tide_node_icon' ' (node --version | string trim --chars=v)
    _tide_print_item node $tide_node_icon' ' (nvm current | string trim --chars=v) 
end
