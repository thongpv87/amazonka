{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.UpdateScalingParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures scaling parameters for a domain. A domain\'s scaling
-- parameters specify the desired search instance type and replication
-- count. Amazon CloudSearch will still automatically scale your domain
-- based on the volume of data and traffic, but not below the desired
-- instance type and replication count. If the Multi-AZ option is enabled,
-- these values control the resources used per Availability Zone. For more
-- information, see
-- <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html Configuring Scaling Options>
-- in the /Amazon CloudSearch Developer Guide/.
module Network.AWS.CloudSearch.UpdateScalingParameters
  ( -- * Creating a Request
    UpdateScalingParameters (..),
    newUpdateScalingParameters,

    -- * Request Lenses
    updateScalingParameters_domainName,
    updateScalingParameters_scalingParameters,

    -- * Destructuring the Response
    UpdateScalingParametersResponse (..),
    newUpdateScalingParametersResponse,

    -- * Response Lenses
    updateScalingParametersResponse_httpStatus,
    updateScalingParametersResponse_scalingParameters,
  )
where

import Network.AWS.CloudSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @UpdateScalingParameters@ operation.
-- Specifies the name of the domain you want to update and the scaling
-- parameters you want to configure.
--
-- /See:/ 'newUpdateScalingParameters' smart constructor.
data UpdateScalingParameters = UpdateScalingParameters'
  { domainName :: Prelude.Text,
    scalingParameters :: ScalingParameters
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateScalingParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'updateScalingParameters_domainName' - Undocumented member.
--
-- 'scalingParameters', 'updateScalingParameters_scalingParameters' - Undocumented member.
newUpdateScalingParameters ::
  -- | 'domainName'
  Prelude.Text ->
  -- | 'scalingParameters'
  ScalingParameters ->
  UpdateScalingParameters
newUpdateScalingParameters
  pDomainName_
  pScalingParameters_ =
    UpdateScalingParameters'
      { domainName = pDomainName_,
        scalingParameters = pScalingParameters_
      }

-- | Undocumented member.
updateScalingParameters_domainName :: Lens.Lens' UpdateScalingParameters Prelude.Text
updateScalingParameters_domainName = Lens.lens (\UpdateScalingParameters' {domainName} -> domainName) (\s@UpdateScalingParameters' {} a -> s {domainName = a} :: UpdateScalingParameters)

-- | Undocumented member.
updateScalingParameters_scalingParameters :: Lens.Lens' UpdateScalingParameters ScalingParameters
updateScalingParameters_scalingParameters = Lens.lens (\UpdateScalingParameters' {scalingParameters} -> scalingParameters) (\s@UpdateScalingParameters' {} a -> s {scalingParameters = a} :: UpdateScalingParameters)

instance Prelude.AWSRequest UpdateScalingParameters where
  type
    Rs UpdateScalingParameters =
      UpdateScalingParametersResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "UpdateScalingParametersResult"
      ( \s h x ->
          UpdateScalingParametersResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Prelude..@ "ScalingParameters")
      )

instance Prelude.Hashable UpdateScalingParameters

instance Prelude.NFData UpdateScalingParameters

instance Prelude.ToHeaders UpdateScalingParameters where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath UpdateScalingParameters where
  toPath = Prelude.const "/"

instance Prelude.ToQuery UpdateScalingParameters where
  toQuery UpdateScalingParameters' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("UpdateScalingParameters" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2013-01-01" :: Prelude.ByteString),
        "DomainName" Prelude.=: domainName,
        "ScalingParameters" Prelude.=: scalingParameters
      ]

-- | The result of a @UpdateScalingParameters@ request. Contains the status
-- of the newly-configured scaling parameters.
--
-- /See:/ 'newUpdateScalingParametersResponse' smart constructor.
data UpdateScalingParametersResponse = UpdateScalingParametersResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    scalingParameters :: ScalingParametersStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateScalingParametersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateScalingParametersResponse_httpStatus' - The response's http status code.
--
-- 'scalingParameters', 'updateScalingParametersResponse_scalingParameters' - Undocumented member.
newUpdateScalingParametersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'scalingParameters'
  ScalingParametersStatus ->
  UpdateScalingParametersResponse
newUpdateScalingParametersResponse
  pHttpStatus_
  pScalingParameters_ =
    UpdateScalingParametersResponse'
      { httpStatus =
          pHttpStatus_,
        scalingParameters = pScalingParameters_
      }

-- | The response's http status code.
updateScalingParametersResponse_httpStatus :: Lens.Lens' UpdateScalingParametersResponse Prelude.Int
updateScalingParametersResponse_httpStatus = Lens.lens (\UpdateScalingParametersResponse' {httpStatus} -> httpStatus) (\s@UpdateScalingParametersResponse' {} a -> s {httpStatus = a} :: UpdateScalingParametersResponse)

-- | Undocumented member.
updateScalingParametersResponse_scalingParameters :: Lens.Lens' UpdateScalingParametersResponse ScalingParametersStatus
updateScalingParametersResponse_scalingParameters = Lens.lens (\UpdateScalingParametersResponse' {scalingParameters} -> scalingParameters) (\s@UpdateScalingParametersResponse' {} a -> s {scalingParameters = a} :: UpdateScalingParametersResponse)

instance
  Prelude.NFData
    UpdateScalingParametersResponse
