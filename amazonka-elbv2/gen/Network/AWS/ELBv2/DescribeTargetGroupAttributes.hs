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
-- Module      : Network.AWS.ELBv2.DescribeTargetGroupAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the attributes for the specified target group.
--
-- For more information, see the following:
--
-- -   <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes Target group attributes>
--     in the /Application Load Balancers Guide/
--
-- -   <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes Target group attributes>
--     in the /Network Load Balancers Guide/
--
-- -   <https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html#target-group-attributes Target group attributes>
--     in the /Gateway Load Balancers Guide/
module Network.AWS.ELBv2.DescribeTargetGroupAttributes
  ( -- * Creating a Request
    DescribeTargetGroupAttributes (..),
    newDescribeTargetGroupAttributes,

    -- * Request Lenses
    describeTargetGroupAttributes_targetGroupArn,

    -- * Destructuring the Response
    DescribeTargetGroupAttributesResponse (..),
    newDescribeTargetGroupAttributesResponse,

    -- * Response Lenses
    describeTargetGroupAttributesResponse_attributes,
    describeTargetGroupAttributesResponse_httpStatus,
  )
where

import Network.AWS.ELBv2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeTargetGroupAttributes' smart constructor.
data DescribeTargetGroupAttributes = DescribeTargetGroupAttributes'
  { -- | The Amazon Resource Name (ARN) of the target group.
    targetGroupArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeTargetGroupAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetGroupArn', 'describeTargetGroupAttributes_targetGroupArn' - The Amazon Resource Name (ARN) of the target group.
newDescribeTargetGroupAttributes ::
  -- | 'targetGroupArn'
  Prelude.Text ->
  DescribeTargetGroupAttributes
newDescribeTargetGroupAttributes pTargetGroupArn_ =
  DescribeTargetGroupAttributes'
    { targetGroupArn =
        pTargetGroupArn_
    }

-- | The Amazon Resource Name (ARN) of the target group.
describeTargetGroupAttributes_targetGroupArn :: Lens.Lens' DescribeTargetGroupAttributes Prelude.Text
describeTargetGroupAttributes_targetGroupArn = Lens.lens (\DescribeTargetGroupAttributes' {targetGroupArn} -> targetGroupArn) (\s@DescribeTargetGroupAttributes' {} a -> s {targetGroupArn = a} :: DescribeTargetGroupAttributes)

instance
  Prelude.AWSRequest
    DescribeTargetGroupAttributes
  where
  type
    Rs DescribeTargetGroupAttributes =
      DescribeTargetGroupAttributesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeTargetGroupAttributesResult"
      ( \s h x ->
          DescribeTargetGroupAttributesResponse'
            Prelude.<$> ( x Prelude..@? "Attributes"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeTargetGroupAttributes

instance Prelude.NFData DescribeTargetGroupAttributes

instance
  Prelude.ToHeaders
    DescribeTargetGroupAttributes
  where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeTargetGroupAttributes where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    DescribeTargetGroupAttributes
  where
  toQuery DescribeTargetGroupAttributes' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ( "DescribeTargetGroupAttributes" ::
                         Prelude.ByteString
                     ),
        "Version"
          Prelude.=: ("2015-12-01" :: Prelude.ByteString),
        "TargetGroupArn" Prelude.=: targetGroupArn
      ]

-- | /See:/ 'newDescribeTargetGroupAttributesResponse' smart constructor.
data DescribeTargetGroupAttributesResponse = DescribeTargetGroupAttributesResponse'
  { -- | Information about the target group attributes
    attributes :: Prelude.Maybe [TargetGroupAttribute],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeTargetGroupAttributesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributes', 'describeTargetGroupAttributesResponse_attributes' - Information about the target group attributes
--
-- 'httpStatus', 'describeTargetGroupAttributesResponse_httpStatus' - The response's http status code.
newDescribeTargetGroupAttributesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeTargetGroupAttributesResponse
newDescribeTargetGroupAttributesResponse pHttpStatus_ =
  DescribeTargetGroupAttributesResponse'
    { attributes =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the target group attributes
describeTargetGroupAttributesResponse_attributes :: Lens.Lens' DescribeTargetGroupAttributesResponse (Prelude.Maybe [TargetGroupAttribute])
describeTargetGroupAttributesResponse_attributes = Lens.lens (\DescribeTargetGroupAttributesResponse' {attributes} -> attributes) (\s@DescribeTargetGroupAttributesResponse' {} a -> s {attributes = a} :: DescribeTargetGroupAttributesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeTargetGroupAttributesResponse_httpStatus :: Lens.Lens' DescribeTargetGroupAttributesResponse Prelude.Int
describeTargetGroupAttributesResponse_httpStatus = Lens.lens (\DescribeTargetGroupAttributesResponse' {httpStatus} -> httpStatus) (\s@DescribeTargetGroupAttributesResponse' {} a -> s {httpStatus = a} :: DescribeTargetGroupAttributesResponse)

instance
  Prelude.NFData
    DescribeTargetGroupAttributesResponse
