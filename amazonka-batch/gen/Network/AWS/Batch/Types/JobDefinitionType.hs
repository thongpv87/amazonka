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
-- Module      : Network.AWS.Batch.Types.JobDefinitionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.JobDefinitionType
  ( JobDefinitionType
      ( ..,
        JobDefinitionTypeContainer,
        JobDefinitionTypeMultinode
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype JobDefinitionType = JobDefinitionType'
  { fromJobDefinitionType ::
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

pattern JobDefinitionTypeContainer :: JobDefinitionType
pattern JobDefinitionTypeContainer = JobDefinitionType' "container"

pattern JobDefinitionTypeMultinode :: JobDefinitionType
pattern JobDefinitionTypeMultinode = JobDefinitionType' "multinode"

{-# COMPLETE
  JobDefinitionTypeContainer,
  JobDefinitionTypeMultinode,
  JobDefinitionType'
  #-}

instance Prelude.FromText JobDefinitionType where
  parser = JobDefinitionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText JobDefinitionType where
  toText (JobDefinitionType' x) = x

instance Prelude.Hashable JobDefinitionType

instance Prelude.NFData JobDefinitionType

instance Prelude.ToByteString JobDefinitionType

instance Prelude.ToQuery JobDefinitionType

instance Prelude.ToHeader JobDefinitionType

instance Prelude.ToJSON JobDefinitionType where
  toJSON = Prelude.toJSONText
