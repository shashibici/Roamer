#==============================================================================
# ● 参数设定
# protosssonny修改版
#------------------------------------------------------------------------------
# PS：本整合系统的大部分参数在这里设定，小部分参数要在各类别中设定
#==============================================================================
module PA
  # 敌人队伍中，1号敌人出现且仅出现一只的开关号
  S_E_M = 6
  # 敌人队伍按原阵容出现的开关号（S_E_O覆盖S_E_M）
  S_E_O = 7
  # 控制敌人数量的变量号，为0时敌人数量随机
  V_E_N = 6

  # 属性水晶的防具编号，默认101号防具是属性水晶
  CRYSTAL = 101
  # 普通怪物队伍掉落属性水晶的概率（为指定数字分之一）：
  DROP_CRYSTAL_PRO = 100
  # 每杀死一个敌人武器防具的掉落概率（0-100之间，为（DROP_PROBABILITY）%，默认是50%）
  DROP_PROBABILITY = 0
  # 设定敌人队伍与掉落武器防具对应列表
  # 第1列默认数值表示敌人队伍（不是敌人）在1至22号时会掉落ID1至3的武器和ID1至2的防具
  EQUIP_TABLE = [
  # 敌人队伍号  武器号      防具号
    [],    [1..3],     [1..2],  
    [],   [4..10],    [3..5],
    [],   [11..15],   [6..10]
  ]
  
  EQUIP_COLOR = [
	Color.new(255,255,255),  # 白色
	Color.new(0,128,255),    # 蓝
	Color.new(128,255,0),    # 绿
	Color.new(255,255,128),  # 黄
	Color.new(255,128,0),    # 橙
	Color.new(128,0,255),    # 紫
	Color.new(255,128,255),   # 粉
	Color.new(0,0,0)         # 黑
  ]
  
  # 幸运草的物品ID
  XYC = 30
  # 神秘红石的物品ID
  SMHS = 31
  # 升级灵石的名称设定
  MATERIAL = ["源灵石","蓝灵石","绿灵石","黄灵石","橙灵石","紫灵石","粉灵石"]
  # 源灵石的物品ID
  OLS = 32
  # 蓝灵石的物品ID
  BLS = 33
  # 绿灵石的物品ID
  GLS = 34
  # 黄灵石的物品ID
  YLS = 35
  # 橙灵石的物品ID
  CLS = 36
  # 紫灵石的物品ID
  PLS = 37
  # 粉灵石的物品ID
  FLS = 38
  # 打孔石的物品ID
  DKS = 39
  
  # 是否使用耐久度系统
  USE_DUR = true
  
  # 设定装备的随机属性（与《随机属性》的Gifts一一对应）
  # 以下属性数组必须设置至少六个元素
  # 武器可以附带的属性包括：
  # 攻击，攻击%，精神，精神%，命中，暴击
  WEAPON_E = [0,1,4,5,12,14]
  # 盾牌可以附带的属性包括：
  # 防御，防御%，敏捷，敏捷%，闪避，魔抗
  SHIELD_E = [2,3,6,7,13,16]
  # 头盔可以附带的属性包括：
  # 防御，防御%，精神，精神%，敏捷，敏捷%，命中
  HELMET_E = [2,3,4,5,6,7,12]
  # 衣服可以附带的属性包括：
  # 防御，防御%，精神，敏捷，闪避，魔抗
  CLOTHE_E = [2,3,4,6,13,16]
  # 装饰物可以附带属性包括：上述所有
  OTHER_E = [0,1,2,3,4,5,6,7,12,13,14,16]
  # 每增加一个属性，价格增加倍数 - 只有在属性取最大值的时候才为0.5
  # 例如增加攻击的属性，可以为0~10，如果属性为攻击+1，则价格
  # 扩张为0.5*(1/10.0)，即价格增值为本身价格的0.05倍
  # 如果属性为攻击+5，则价格扩张为0.5*(5/10.0)，即价格增值为本身的
  # 0.25倍
  ATTR_PRICE_EXTENSION = 0.5
  # 生成$game_variables[3]*max 至 $game_variables[4]*max之间的属性值
  # 不用的属性max不同，在《随机属性》中设定
  MIN_PORTION = 0
  # 最大属性值（这也是一个百分比，用来和每种属性的max相乘）
  MAX_PORTION = 100
  
  # 每一级能够获得的基础点数（体质为弱时）
  BASE_POINTS = 4
  HP_ASCEND = 8
  MP_ASCEND = 4
  ATK_ASCEND = 1
  DEF_ASCEND = 1
  SPI_ASCEND = 1
  AGI_ASCEND = 1
end