{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.TargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.TargetType
  ( TargetType
      ( ..,
        TargetTypeACCOUNT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetType = TargetType'
  { fromTargetType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern TargetTypeACCOUNT :: TargetType
pattern TargetTypeACCOUNT = TargetType' "ACCOUNT"

{-# COMPLETE
  TargetTypeACCOUNT,
  TargetType'
  #-}

instance Prelude.FromText TargetType where
  parser = TargetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetType where
  toText (TargetType' x) = x

instance Prelude.Hashable TargetType

instance Prelude.NFData TargetType

instance Prelude.ToByteString TargetType

instance Prelude.ToQuery TargetType

instance Prelude.ToHeader TargetType

instance Prelude.ToJSON TargetType where
  toJSON = Prelude.toJSONText
