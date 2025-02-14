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
-- Module      : Network.AWS.EC2.Types.UnlimitedSupportedInstanceFamily
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.UnlimitedSupportedInstanceFamily
  ( UnlimitedSupportedInstanceFamily
      ( ..,
        UnlimitedSupportedInstanceFamily_T2,
        UnlimitedSupportedInstanceFamily_T3,
        UnlimitedSupportedInstanceFamily_T3a,
        UnlimitedSupportedInstanceFamily_T4g
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype UnlimitedSupportedInstanceFamily = UnlimitedSupportedInstanceFamily'
  { fromUnlimitedSupportedInstanceFamily ::
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

pattern UnlimitedSupportedInstanceFamily_T2 :: UnlimitedSupportedInstanceFamily
pattern UnlimitedSupportedInstanceFamily_T2 = UnlimitedSupportedInstanceFamily' "t2"

pattern UnlimitedSupportedInstanceFamily_T3 :: UnlimitedSupportedInstanceFamily
pattern UnlimitedSupportedInstanceFamily_T3 = UnlimitedSupportedInstanceFamily' "t3"

pattern UnlimitedSupportedInstanceFamily_T3a :: UnlimitedSupportedInstanceFamily
pattern UnlimitedSupportedInstanceFamily_T3a = UnlimitedSupportedInstanceFamily' "t3a"

pattern UnlimitedSupportedInstanceFamily_T4g :: UnlimitedSupportedInstanceFamily
pattern UnlimitedSupportedInstanceFamily_T4g = UnlimitedSupportedInstanceFamily' "t4g"

{-# COMPLETE
  UnlimitedSupportedInstanceFamily_T2,
  UnlimitedSupportedInstanceFamily_T3,
  UnlimitedSupportedInstanceFamily_T3a,
  UnlimitedSupportedInstanceFamily_T4g,
  UnlimitedSupportedInstanceFamily'
  #-}
