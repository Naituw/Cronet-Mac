//
//  build_flags.h
//  CronetNetworking
//
//  Created by 吴天 on 2017/7/24.
//  Copyright © 2017年 Weibo. All rights reserved.
//

#ifndef build_flags_h
#define build_flags_h

#define BUILDFLAG_CAT_INDIRECT(a, b) a ## b
#define BUILDFLAG_CAT(a, b) BUILDFLAG_CAT_INDIRECT(a, b)
#define BUILDFLAG_CAT(a, b) BUILDFLAG_CAT_INDIRECT(a, b)
#define BUILDFLAG(flag) (BUILDFLAG_CAT(BUILDFLAG_INTERNAL_, flag)())

#define BUILDFLAG_INTERNAL_USE_ALLOCATOR_SHIM() (0)

#endif /* build_flags_h */
