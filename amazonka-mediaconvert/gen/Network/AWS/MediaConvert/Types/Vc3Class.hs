{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vc3Class
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3Class
  ( Vc3Class
      ( ..,
        Vc3Class_CLASS_145_8BIT,
        Vc3Class_CLASS_220_10BIT,
        Vc3Class_CLASS_220_8BIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the VC3 class to choose the quality characteristics for this
-- output. VC3 class, together with the settings Framerate
-- (framerateNumerator and framerateDenominator) and Resolution (height and
-- width), determine your output bitrate. For example, say that your video
-- resolution is 1920x1080 and your framerate is 29.97. Then Class 145
-- (CLASS_145) gives you an output with a bitrate of approximately 145 Mbps
-- and Class 220 (CLASS_220) gives you and output with a bitrate of
-- approximately 220 Mbps. VC3 class also specifies the color bit depth of
-- your output.
newtype Vc3Class = Vc3Class'
  { fromVc3Class ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern Vc3Class_CLASS_145_8BIT :: Vc3Class
pattern Vc3Class_CLASS_145_8BIT = Vc3Class' "CLASS_145_8BIT"

pattern Vc3Class_CLASS_220_10BIT :: Vc3Class
pattern Vc3Class_CLASS_220_10BIT = Vc3Class' "CLASS_220_10BIT"

pattern Vc3Class_CLASS_220_8BIT :: Vc3Class
pattern Vc3Class_CLASS_220_8BIT = Vc3Class' "CLASS_220_8BIT"

{-# COMPLETE
  Vc3Class_CLASS_145_8BIT,
  Vc3Class_CLASS_220_10BIT,
  Vc3Class_CLASS_220_8BIT,
  Vc3Class'
  #-}
