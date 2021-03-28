{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Pricing
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.Pricing where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.Pricing
import Test.AWS.Pricing.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetAttributeValues $
--             mkGetAttributeValues
--
--         , requestDescribeServices $
--             mkDescribeServices
--
--         , requestGetProducts $
--             mkGetProducts
--
--           ]

--     , testGroup "response"
--         [ responseGetAttributeValues $
--             mkGetAttributeValuesResponse
--
--         , responseDescribeServices $
--             mkDescribeServicesResponse
--
--         , responseGetProducts $
--             mkGetProductsResponse
--
--           ]
--     ]

-- Requests

requestGetAttributeValues :: GetAttributeValues -> TestTree
requestGetAttributeValues = req
    "GetAttributeValues"
    "fixture/GetAttributeValues.yaml"

requestDescribeServices :: DescribeServices -> TestTree
requestDescribeServices = req
    "DescribeServices"
    "fixture/DescribeServices.yaml"

requestGetProducts :: GetProducts -> TestTree
requestGetProducts = req
    "GetProducts"
    "fixture/GetProducts.yaml"

-- Responses

responseGetAttributeValues :: GetAttributeValuesResponse -> TestTree
responseGetAttributeValues = res
    "GetAttributeValuesResponse"
    "fixture/GetAttributeValuesResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy GetAttributeValues)

responseDescribeServices :: DescribeServicesResponse -> TestTree
responseDescribeServices = res
    "DescribeServicesResponse"
    "fixture/DescribeServicesResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeServices)

responseGetProducts :: GetProductsResponse -> TestTree
responseGetProducts = res
    "GetProductsResponse"
    "fixture/GetProductsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy GetProducts)
