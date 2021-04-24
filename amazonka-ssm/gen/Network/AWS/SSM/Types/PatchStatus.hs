{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchStatus where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.PatchComplianceLevel
import Network.AWS.SSM.Types.PatchDeploymentStatus

-- | Information about the approval status of a patch.
--
--
--
-- /See:/ 'patchStatus' smart constructor.
data PatchStatus = PatchStatus'
  { _psApprovalDate ::
      !(Maybe POSIX),
    _psComplianceLevel ::
      !(Maybe PatchComplianceLevel),
    _psDeploymentStatus ::
      !(Maybe PatchDeploymentStatus)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PatchStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psApprovalDate' - The date the patch was approved (or will be approved if the status is PENDING_APPROVAL).
--
-- * 'psComplianceLevel' - The compliance severity level for a patch.
--
-- * 'psDeploymentStatus' - The approval status of a patch (APPROVED, PENDING_APPROVAL, EXPLICIT_APPROVED, EXPLICIT_REJECTED).
patchStatus ::
  PatchStatus
patchStatus =
  PatchStatus'
    { _psApprovalDate = Nothing,
      _psComplianceLevel = Nothing,
      _psDeploymentStatus = Nothing
    }

-- | The date the patch was approved (or will be approved if the status is PENDING_APPROVAL).
psApprovalDate :: Lens' PatchStatus (Maybe UTCTime)
psApprovalDate = lens _psApprovalDate (\s a -> s {_psApprovalDate = a}) . mapping _Time

-- | The compliance severity level for a patch.
psComplianceLevel :: Lens' PatchStatus (Maybe PatchComplianceLevel)
psComplianceLevel = lens _psComplianceLevel (\s a -> s {_psComplianceLevel = a})

-- | The approval status of a patch (APPROVED, PENDING_APPROVAL, EXPLICIT_APPROVED, EXPLICIT_REJECTED).
psDeploymentStatus :: Lens' PatchStatus (Maybe PatchDeploymentStatus)
psDeploymentStatus = lens _psDeploymentStatus (\s a -> s {_psDeploymentStatus = a})

instance FromJSON PatchStatus where
  parseJSON =
    withObject
      "PatchStatus"
      ( \x ->
          PatchStatus'
            <$> (x .:? "ApprovalDate")
            <*> (x .:? "ComplianceLevel")
            <*> (x .:? "DeploymentStatus")
      )

instance Hashable PatchStatus

instance NFData PatchStatus
