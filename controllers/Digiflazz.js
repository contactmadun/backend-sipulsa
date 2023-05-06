exports.connDigiflazz = async (req, res) => {
    try {
        const data = 'Api running normaly';
        res.json(data);
    } catch (error) {
        console.log(error);
    }
}