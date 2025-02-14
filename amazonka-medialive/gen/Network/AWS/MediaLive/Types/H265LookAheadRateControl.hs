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
-- Module      : Network.AWS.MediaLive.Types.H265LookAheadRateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265LookAheadRateControl
  ( H265LookAheadRateControl
      ( ..,
        H265LookAheadRateControl_HIGH,
        H265LookAheadRateControl_LOW,
        H265LookAheadRateControl_MEDIUM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H265 Look Ahead Rate Control
newtype H265LookAheadRateControl = H265LookAheadRateControl'
  { fromH265LookAheadRateControl ::
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

pattern H265LookAheadRateControl_HIGH :: H265LookAheadRateControl
pattern H265LookAheadRateControl_HIGH = H265LookAheadRateControl' "HIGH"

pattern H265LookAheadRateControl_LOW :: H265LookAheadRateControl
pattern H265LookAheadRateControl_LOW = H265LookAheadRateControl' "LOW"

pattern H265LookAheadRateControl_MEDIUM :: H265LookAheadRateControl
pattern H265LookAheadRateControl_MEDIUM = H265LookAheadRateControl' "MEDIUM"

{-# COMPLETE
  H265LookAheadRateControl_HIGH,
  H265LookAheadRateControl_LOW,
  H265LookAheadRateControl_MEDIUM,
  H265LookAheadRateControl'
  #-}
