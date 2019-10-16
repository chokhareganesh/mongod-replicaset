var cfg = { _id: 'rs0',
    members: [
        { _id: 0, host: '192.168.99.1:27017'},
        { _id: 1, host: '192.168.99.1:27018'},
        { _id: 2, host: '192.168.99.1:27019', arbiterOnly: true}
    ]
};

var error = rs.initiate(cfg);
printjson(error);
