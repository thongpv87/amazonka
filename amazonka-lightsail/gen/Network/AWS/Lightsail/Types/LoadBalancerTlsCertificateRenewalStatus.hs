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
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateRenewalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateRenewalStatus
  ( LoadBalancerTlsCertificateRenewalStatus
      ( ..,
        LoadBalancerTlsCertificateRenewalStatus_FAILED,
        LoadBalancerTlsCertificateRenewalStatus_PENDING_AUTO_RENEWAL,
        LoadBalancerTlsCertificateRenewalStatus_PENDING_VALIDATION,
        LoadBalancerTlsCertificateRenewalStatus_SUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerTlsCertificateRenewalStatus = LoadBalancerTlsCertificateRenewalStatus'
  { fromLoadBalancerTlsCertificateRenewalStatus ::
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

pattern LoadBalancerTlsCertificateRenewalStatus_FAILED :: LoadBalancerTlsCertificateRenewalStatus
pattern LoadBalancerTlsCertificateRenewalStatus_FAILED = LoadBalancerTlsCertificateRenewalStatus' "FAILED"

pattern LoadBalancerTlsCertificateRenewalStatus_PENDING_AUTO_RENEWAL :: LoadBalancerTlsCertificateRenewalStatus
pattern LoadBalancerTlsCertificateRenewalStatus_PENDING_AUTO_RENEWAL = LoadBalancerTlsCertificateRenewalStatus' "PENDING_AUTO_RENEWAL"

pattern LoadBalancerTlsCertificateRenewalStatus_PENDING_VALIDATION :: LoadBalancerTlsCertificateRenewalStatus
pattern LoadBalancerTlsCertificateRenewalStatus_PENDING_VALIDATION = LoadBalancerTlsCertificateRenewalStatus' "PENDING_VALIDATION"

pattern LoadBalancerTlsCertificateRenewalStatus_SUCCESS :: LoadBalancerTlsCertificateRenewalStatus
pattern LoadBalancerTlsCertificateRenewalStatus_SUCCESS = LoadBalancerTlsCertificateRenewalStatus' "SUCCESS"

{-# COMPLETE
  LoadBalancerTlsCertificateRenewalStatus_FAILED,
  LoadBalancerTlsCertificateRenewalStatus_PENDING_AUTO_RENEWAL,
  LoadBalancerTlsCertificateRenewalStatus_PENDING_VALIDATION,
  LoadBalancerTlsCertificateRenewalStatus_SUCCESS,
  LoadBalancerTlsCertificateRenewalStatus'
  #-}
