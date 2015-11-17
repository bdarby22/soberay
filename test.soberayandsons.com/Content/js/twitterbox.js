new TWTR.Widget({
    version: 2,
    type: 'profile',
    rpp: 15,
    interval: 30000,
    width: 225,
    height: 200,
    theme: {
        shell: {
            background: '#5c87b2',
            color: '#ffffff'
        },
        tweets: {
            background: '#fffaff',
            color: '#000000',
            links: '#4e49eb'
        }
    },
    features: {
        scrollbar: false,
        loop: false,
        live: true,
        behavior: 'default'
    }
}).render().setUser('SoberaySons').start();