Page({
  data: {
    formData: {
      field101: '',
      field102: '',
      field104: '',
    },
    userInfo: {},
    hasUserInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo'),
    canIUseGetUserProfile: false,
    canIUseOpenData: wx.canIUse('open-data.type.userAvatarUrl') && wx.canIUse('open-data.type.userNickName') // 如需尝试获取用户信息可改为false
  },

  // 事件处理函数
  bindViewTap() {
    wx.navigateTo({
      url: '../logs/logs'
    })
  },

  onLoad() {
    if (wx.getUserProfile) {
      this.setData({
        canIUseGetUserProfile: true
      })
    }
  },

  getUserProfile(e) {
    wx.getUserProfile({
      desc: '展示用户信息',
      success: (res) => {
        console.log(res)
        this.setData({
          userInfo: res.userInfo,
          hasUserInfo: true
        })
      }
    })
  },

  getUserInfo(e) {
    console.log(e)
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    })
  },

  bindField101Input: function (e) {
    this.setData({
      'formData.field101': e.detail.value
    })
  },

  bindField102Input: function (e) {
    this.setData({
      'formData.field102': e.detail.value
    })
  },

  bindField104Input: function (e) {
    this.setData({
      'formData.field104': e.detail.value
    })
  },

  // submitForm: function () {
  //     // 对drug1和drug2的值进行URL解码
  //     var drug1 = decodeURIComponent(this.data.formData.field101);
  //     var drug2 = decodeURIComponent(this.data.formData.field102);

  //     wx.request({
  //       url: 'http://localhost/dev-api/system/table1/list',
  //       method: 'GET',
  //       data: {
  //         pageNum: 1,
  //         pageSize: 10,
  //         drug1: drug1,
  //         drug2: drug2
  //       },
  //       success: function (res) {
  //         console.log(res.data)
  //         if (res.statusCode === 200) {
  //           this.setData({
  //             'formData.field104': res.data.data
  //           })
  //         } else {
  //           wx.showToast({
  //             title: '查询失败，请稍后再试',
  //             icon: 'none'
  //           })
  //         }
  //       }.bind(this),
  //       fail: function () {
  //         wx.showToast({
  //           title: '查询失败，请稍后再试',
  //           icon: 'none'
  //         })
  //       }
  //     })
  //   },
  submitForm: function () {
    // 对drug1和drug2的值进行URL解码
    var drug1 = decodeURIComponent(this.data.formData.field101);
    var drug2 = decodeURIComponent(this.data.formData.field102);

    // 判断药品名称是否为空
    if (!drug1 || !drug2) {
      wx.showToast({

        title: '请输入完整的药品名称',
        icon: 'none'
      })
      return;
    }

    // 模拟请求数据，返回假数据
    if (drug1 == '阿司匹林' && drug2 == '氨维胺') {
      this.setData({
        'formData.field104': '阿司匹林和氨维胺具有相互作用。建议在服用这两种药物时注意剂量和间隔时间。',
      })
    } else if (drug1 == '头孢克肟' && drug2 == '乙酰水杨酸') {
      this.setData({
        'formData.field104': '头孢克肟和乙酰水杨酸没有明显的相互作用。',
      })
    } else {
      this.setData({
        'formData.field104': '未查询到相关信息。',
      })
    }
  },

  resetForm: function () {
    this.setData({
      'formData.field101': '',
      'formData.field102': '',
      'formData.field104': ''
    })
  },
  scanCode: function () {
    wx.scanCode({
      success: (res) => {
        console.log(res)
        if (res.result) {
          // 将扫描结果赋值给输入框
          this.setData({
            'formData.field101': res.result
          })
        } else {
          wx.showToast({
            title: '扫描失败，请稍后再试',
            icon: 'none'
          })
        }
      },
      fail: (res) => {
        console.log(res)
        wx.showToast({
          title: '扫描失败，请稍后再试',
          icon: 'none'
        })
      }
    })
  },
  scanCode2: function () {
    wx.scanCode({
      success: (res) => {
        console.log(res)
        if (res.result) {
          // 将扫描结果赋值给输入框
          this.setData({
            'formData.field102': res.result
          })
        } else {
          wx.showToast({
            title: '扫描失败，请稍后再试',
            icon: 'none'
          })
        }
      },
      fail: (res) => {
        console.log(res)
        wx.showToast({
          title: '扫描失败，请稍后再试',
          icon: 'none'
        })
      }
    })
  }
})