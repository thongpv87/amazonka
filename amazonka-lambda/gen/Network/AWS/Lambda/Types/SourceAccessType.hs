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
-- Module      : Network.AWS.Lambda.Types.SourceAccessType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.SourceAccessType
  ( SourceAccessType
      ( ..,
        SourceAccessType_BASIC_AUTH,
        SourceAccessType_SASL_SCRAM_256_AUTH,
        SourceAccessType_SASL_SCRAM_512_AUTH,
        SourceAccessType_VPC_SECURITY_GROUP,
        SourceAccessType_VPC_SUBNET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SourceAccessType = SourceAccessType'
  { fromSourceAccessType ::
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

pattern SourceAccessType_BASIC_AUTH :: SourceAccessType
pattern SourceAccessType_BASIC_AUTH = SourceAccessType' "BASIC_AUTH"

pattern SourceAccessType_SASL_SCRAM_256_AUTH :: SourceAccessType
pattern SourceAccessType_SASL_SCRAM_256_AUTH = SourceAccessType' "SASL_SCRAM_256_AUTH"

pattern SourceAccessType_SASL_SCRAM_512_AUTH :: SourceAccessType
pattern SourceAccessType_SASL_SCRAM_512_AUTH = SourceAccessType' "SASL_SCRAM_512_AUTH"

pattern SourceAccessType_VPC_SECURITY_GROUP :: SourceAccessType
pattern SourceAccessType_VPC_SECURITY_GROUP = SourceAccessType' "VPC_SECURITY_GROUP"

pattern SourceAccessType_VPC_SUBNET :: SourceAccessType
pattern SourceAccessType_VPC_SUBNET = SourceAccessType' "VPC_SUBNET"

{-# COMPLETE
  SourceAccessType_BASIC_AUTH,
  SourceAccessType_SASL_SCRAM_256_AUTH,
  SourceAccessType_SASL_SCRAM_512_AUTH,
  SourceAccessType_VPC_SECURITY_GROUP,
  SourceAccessType_VPC_SUBNET,
  SourceAccessType'
  #-}
