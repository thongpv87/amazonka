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
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisioningArtifactType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisioningArtifactType
  ( ProvisioningArtifactType
      ( ..,
        ProvisioningArtifactType_CLOUD_FORMATION_TEMPLATE,
        ProvisioningArtifactType_MARKETPLACE_AMI,
        ProvisioningArtifactType_MARKETPLACE_CAR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProvisioningArtifactType = ProvisioningArtifactType'
  { fromProvisioningArtifactType ::
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

pattern ProvisioningArtifactType_CLOUD_FORMATION_TEMPLATE :: ProvisioningArtifactType
pattern ProvisioningArtifactType_CLOUD_FORMATION_TEMPLATE = ProvisioningArtifactType' "CLOUD_FORMATION_TEMPLATE"

pattern ProvisioningArtifactType_MARKETPLACE_AMI :: ProvisioningArtifactType
pattern ProvisioningArtifactType_MARKETPLACE_AMI = ProvisioningArtifactType' "MARKETPLACE_AMI"

pattern ProvisioningArtifactType_MARKETPLACE_CAR :: ProvisioningArtifactType
pattern ProvisioningArtifactType_MARKETPLACE_CAR = ProvisioningArtifactType' "MARKETPLACE_CAR"

{-# COMPLETE
  ProvisioningArtifactType_CLOUD_FORMATION_TEMPLATE,
  ProvisioningArtifactType_MARKETPLACE_AMI,
  ProvisioningArtifactType_MARKETPLACE_CAR,
  ProvisioningArtifactType'
  #-}
