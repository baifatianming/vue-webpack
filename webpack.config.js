var path = require('path')
var webpack = require('webpack')

module.exports = {
  devtool: 'eval-source-map',//配置生成Source Maps，选择合适的选项
  entry: './src/app.js',
  output: {
    path: path.resolve(__dirname, './dist'),
    publicPath: '/dist/',
    filename: 'build.js'
  },
  module: {
    rules: [
      {
        test: /\.vue$/,
        loader: 'vue-loader',
      },
      {
        test: /\.js$/,
        loader: 'babel-loader',
        exclude: /node_modules/
      },
      {   test: /\.css$/,
          loader: 'style-loader!css-loader?sourceMap'
      },
      {
          test: /\.(woff|svg|eot|ttf)\??.*$/,
          loader: 'url-loader?limit=50000&name=[path][name].[ext]'
      },
      {
          test: /\.scss$/,
          exclude: /node_modules/,
          loader: 'raw-loader!sass-loader'
      },
      {
        test: /\.(png|jpg|gif|svg)$/,
        loader: 'file-loader',
        options: {
          name: '[name].[ext]?[hash]'
        }
      }
    ]
  },
  resolve: {
    alias: {
      'vue$': 'vue/dist/vue.esm.js'
    }
  },
  devServer: {
    historyApiFallback: true,
    noInfo: true
  },
  performance: {
    hints: false
  },
  plugins: [
    //代码压缩
    new webpack.optimize.UglifyJsPlugin()
  ]
}