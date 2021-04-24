{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Route53Domains
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Route53Domains where

import Data.Proxy
import Network.AWS.Route53Domains
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.Route53Domains.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestTransferDomainToAnotherAWSAccount $
--             transferDomainToAnotherAWSAccount
--
--         , requestUpdateDomainContactPrivacy $
--             updateDomainContactPrivacy
--
--         , requestCheckDomainAvailability $
--             checkDomainAvailability
--
--         , requestCheckDomainTransferability $
--             checkDomainTransferability
--
--         , requestListOperations $
--             listOperations
--
--         , requestDisableDomainTransferLock $
--             disableDomainTransferLock
--
--         , requestRegisterDomain $
--             registerDomain
--
--         , requestGetDomainSuggestions $
--             getDomainSuggestions
--
--         , requestListDomains $
--             listDomains
--
--         , requestCancelDomainTransferToAnotherAWSAccount $
--             cancelDomainTransferToAnotherAWSAccount
--
--         , requestEnableDomainTransferLock $
--             enableDomainTransferLock
--
--         , requestViewBilling $
--             viewBilling
--
--         , requestDeleteTagsForDomain $
--             deleteTagsForDomain
--
--         , requestUpdateTagsForDomain $
--             updateTagsForDomain
--
--         , requestListTagsForDomain $
--             listTagsForDomain
--
--         , requestResendContactReachabilityEmail $
--             resendContactReachabilityEmail
--
--         , requestDisableDomainAutoRenew $
--             disableDomainAutoRenew
--
--         , requestUpdateDomainNameservers $
--             updateDomainNameservers
--
--         , requestEnableDomainAutoRenew $
--             enableDomainAutoRenew
--
--         , requestGetContactReachabilityStatus $
--             getContactReachabilityStatus
--
--         , requestRejectDomainTransferFromAnotherAWSAccount $
--             rejectDomainTransferFromAnotherAWSAccount
--
--         , requestAcceptDomainTransferFromAnotherAWSAccount $
--             acceptDomainTransferFromAnotherAWSAccount
--
--         , requestGetOperationDetail $
--             getOperationDetail
--
--         , requestGetDomainDetail $
--             getDomainDetail
--
--         , requestUpdateDomainContact $
--             updateDomainContact
--
--         , requestTransferDomain $
--             transferDomain
--
--         , requestRenewDomain $
--             renewDomain
--
--         , requestRetrieveDomainAuthCode $
--             retrieveDomainAuthCode
--
--           ]

--     , testGroup "response"
--         [ responseTransferDomainToAnotherAWSAccount $
--             transferDomainToAnotherAWSAccountResponse
--
--         , responseUpdateDomainContactPrivacy $
--             updateDomainContactPrivacyResponse
--
--         , responseCheckDomainAvailability $
--             checkDomainAvailabilityResponse
--
--         , responseCheckDomainTransferability $
--             checkDomainTransferabilityResponse
--
--         , responseListOperations $
--             listOperationsResponse
--
--         , responseDisableDomainTransferLock $
--             disableDomainTransferLockResponse
--
--         , responseRegisterDomain $
--             registerDomainResponse
--
--         , responseGetDomainSuggestions $
--             getDomainSuggestionsResponse
--
--         , responseListDomains $
--             listDomainsResponse
--
--         , responseCancelDomainTransferToAnotherAWSAccount $
--             cancelDomainTransferToAnotherAWSAccountResponse
--
--         , responseEnableDomainTransferLock $
--             enableDomainTransferLockResponse
--
--         , responseViewBilling $
--             viewBillingResponse
--
--         , responseDeleteTagsForDomain $
--             deleteTagsForDomainResponse
--
--         , responseUpdateTagsForDomain $
--             updateTagsForDomainResponse
--
--         , responseListTagsForDomain $
--             listTagsForDomainResponse
--
--         , responseResendContactReachabilityEmail $
--             resendContactReachabilityEmailResponse
--
--         , responseDisableDomainAutoRenew $
--             disableDomainAutoRenewResponse
--
--         , responseUpdateDomainNameservers $
--             updateDomainNameserversResponse
--
--         , responseEnableDomainAutoRenew $
--             enableDomainAutoRenewResponse
--
--         , responseGetContactReachabilityStatus $
--             getContactReachabilityStatusResponse
--
--         , responseRejectDomainTransferFromAnotherAWSAccount $
--             rejectDomainTransferFromAnotherAWSAccountResponse
--
--         , responseAcceptDomainTransferFromAnotherAWSAccount $
--             acceptDomainTransferFromAnotherAWSAccountResponse
--
--         , responseGetOperationDetail $
--             getOperationDetailResponse
--
--         , responseGetDomainDetail $
--             getDomainDetailResponse
--
--         , responseUpdateDomainContact $
--             updateDomainContactResponse
--
--         , responseTransferDomain $
--             transferDomainResponse
--
--         , responseRenewDomain $
--             renewDomainResponse
--
--         , responseRetrieveDomainAuthCode $
--             retrieveDomainAuthCodeResponse
--
--           ]
--     ]

-- Requests

requestTransferDomainToAnotherAWSAccount :: TransferDomainToAnotherAWSAccount -> TestTree
requestTransferDomainToAnotherAWSAccount =
  req
    "TransferDomainToAnotherAWSAccount"
    "fixture/TransferDomainToAnotherAWSAccount.yaml"

requestUpdateDomainContactPrivacy :: UpdateDomainContactPrivacy -> TestTree
requestUpdateDomainContactPrivacy =
  req
    "UpdateDomainContactPrivacy"
    "fixture/UpdateDomainContactPrivacy.yaml"

requestCheckDomainAvailability :: CheckDomainAvailability -> TestTree
requestCheckDomainAvailability =
  req
    "CheckDomainAvailability"
    "fixture/CheckDomainAvailability.yaml"

requestCheckDomainTransferability :: CheckDomainTransferability -> TestTree
requestCheckDomainTransferability =
  req
    "CheckDomainTransferability"
    "fixture/CheckDomainTransferability.yaml"

requestListOperations :: ListOperations -> TestTree
requestListOperations =
  req
    "ListOperations"
    "fixture/ListOperations.yaml"

requestDisableDomainTransferLock :: DisableDomainTransferLock -> TestTree
requestDisableDomainTransferLock =
  req
    "DisableDomainTransferLock"
    "fixture/DisableDomainTransferLock.yaml"

requestRegisterDomain :: RegisterDomain -> TestTree
requestRegisterDomain =
  req
    "RegisterDomain"
    "fixture/RegisterDomain.yaml"

requestGetDomainSuggestions :: GetDomainSuggestions -> TestTree
requestGetDomainSuggestions =
  req
    "GetDomainSuggestions"
    "fixture/GetDomainSuggestions.yaml"

requestListDomains :: ListDomains -> TestTree
requestListDomains =
  req
    "ListDomains"
    "fixture/ListDomains.yaml"

requestCancelDomainTransferToAnotherAWSAccount :: CancelDomainTransferToAnotherAWSAccount -> TestTree
requestCancelDomainTransferToAnotherAWSAccount =
  req
    "CancelDomainTransferToAnotherAWSAccount"
    "fixture/CancelDomainTransferToAnotherAWSAccount.yaml"

requestEnableDomainTransferLock :: EnableDomainTransferLock -> TestTree
requestEnableDomainTransferLock =
  req
    "EnableDomainTransferLock"
    "fixture/EnableDomainTransferLock.yaml"

requestViewBilling :: ViewBilling -> TestTree
requestViewBilling =
  req
    "ViewBilling"
    "fixture/ViewBilling.yaml"

requestDeleteTagsForDomain :: DeleteTagsForDomain -> TestTree
requestDeleteTagsForDomain =
  req
    "DeleteTagsForDomain"
    "fixture/DeleteTagsForDomain.yaml"

requestUpdateTagsForDomain :: UpdateTagsForDomain -> TestTree
requestUpdateTagsForDomain =
  req
    "UpdateTagsForDomain"
    "fixture/UpdateTagsForDomain.yaml"

requestListTagsForDomain :: ListTagsForDomain -> TestTree
requestListTagsForDomain =
  req
    "ListTagsForDomain"
    "fixture/ListTagsForDomain.yaml"

requestResendContactReachabilityEmail :: ResendContactReachabilityEmail -> TestTree
requestResendContactReachabilityEmail =
  req
    "ResendContactReachabilityEmail"
    "fixture/ResendContactReachabilityEmail.yaml"

requestDisableDomainAutoRenew :: DisableDomainAutoRenew -> TestTree
requestDisableDomainAutoRenew =
  req
    "DisableDomainAutoRenew"
    "fixture/DisableDomainAutoRenew.yaml"

requestUpdateDomainNameservers :: UpdateDomainNameservers -> TestTree
requestUpdateDomainNameservers =
  req
    "UpdateDomainNameservers"
    "fixture/UpdateDomainNameservers.yaml"

requestEnableDomainAutoRenew :: EnableDomainAutoRenew -> TestTree
requestEnableDomainAutoRenew =
  req
    "EnableDomainAutoRenew"
    "fixture/EnableDomainAutoRenew.yaml"

requestGetContactReachabilityStatus :: GetContactReachabilityStatus -> TestTree
requestGetContactReachabilityStatus =
  req
    "GetContactReachabilityStatus"
    "fixture/GetContactReachabilityStatus.yaml"

requestRejectDomainTransferFromAnotherAWSAccount :: RejectDomainTransferFromAnotherAWSAccount -> TestTree
requestRejectDomainTransferFromAnotherAWSAccount =
  req
    "RejectDomainTransferFromAnotherAWSAccount"
    "fixture/RejectDomainTransferFromAnotherAWSAccount.yaml"

requestAcceptDomainTransferFromAnotherAWSAccount :: AcceptDomainTransferFromAnotherAWSAccount -> TestTree
requestAcceptDomainTransferFromAnotherAWSAccount =
  req
    "AcceptDomainTransferFromAnotherAWSAccount"
    "fixture/AcceptDomainTransferFromAnotherAWSAccount.yaml"

requestGetOperationDetail :: GetOperationDetail -> TestTree
requestGetOperationDetail =
  req
    "GetOperationDetail"
    "fixture/GetOperationDetail.yaml"

requestGetDomainDetail :: GetDomainDetail -> TestTree
requestGetDomainDetail =
  req
    "GetDomainDetail"
    "fixture/GetDomainDetail.yaml"

requestUpdateDomainContact :: UpdateDomainContact -> TestTree
requestUpdateDomainContact =
  req
    "UpdateDomainContact"
    "fixture/UpdateDomainContact.yaml"

requestTransferDomain :: TransferDomain -> TestTree
requestTransferDomain =
  req
    "TransferDomain"
    "fixture/TransferDomain.yaml"

requestRenewDomain :: RenewDomain -> TestTree
requestRenewDomain =
  req
    "RenewDomain"
    "fixture/RenewDomain.yaml"

requestRetrieveDomainAuthCode :: RetrieveDomainAuthCode -> TestTree
requestRetrieveDomainAuthCode =
  req
    "RetrieveDomainAuthCode"
    "fixture/RetrieveDomainAuthCode.yaml"

-- Responses

responseTransferDomainToAnotherAWSAccount :: TransferDomainToAnotherAWSAccountResponse -> TestTree
responseTransferDomainToAnotherAWSAccount =
  res
    "TransferDomainToAnotherAWSAccountResponse"
    "fixture/TransferDomainToAnotherAWSAccountResponse.proto"
    route53Domains
    (Proxy :: Proxy TransferDomainToAnotherAWSAccount)

responseUpdateDomainContactPrivacy :: UpdateDomainContactPrivacyResponse -> TestTree
responseUpdateDomainContactPrivacy =
  res
    "UpdateDomainContactPrivacyResponse"
    "fixture/UpdateDomainContactPrivacyResponse.proto"
    route53Domains
    (Proxy :: Proxy UpdateDomainContactPrivacy)

responseCheckDomainAvailability :: CheckDomainAvailabilityResponse -> TestTree
responseCheckDomainAvailability =
  res
    "CheckDomainAvailabilityResponse"
    "fixture/CheckDomainAvailabilityResponse.proto"
    route53Domains
    (Proxy :: Proxy CheckDomainAvailability)

responseCheckDomainTransferability :: CheckDomainTransferabilityResponse -> TestTree
responseCheckDomainTransferability =
  res
    "CheckDomainTransferabilityResponse"
    "fixture/CheckDomainTransferabilityResponse.proto"
    route53Domains
    (Proxy :: Proxy CheckDomainTransferability)

responseListOperations :: ListOperationsResponse -> TestTree
responseListOperations =
  res
    "ListOperationsResponse"
    "fixture/ListOperationsResponse.proto"
    route53Domains
    (Proxy :: Proxy ListOperations)

responseDisableDomainTransferLock :: DisableDomainTransferLockResponse -> TestTree
responseDisableDomainTransferLock =
  res
    "DisableDomainTransferLockResponse"
    "fixture/DisableDomainTransferLockResponse.proto"
    route53Domains
    (Proxy :: Proxy DisableDomainTransferLock)

responseRegisterDomain :: RegisterDomainResponse -> TestTree
responseRegisterDomain =
  res
    "RegisterDomainResponse"
    "fixture/RegisterDomainResponse.proto"
    route53Domains
    (Proxy :: Proxy RegisterDomain)

responseGetDomainSuggestions :: GetDomainSuggestionsResponse -> TestTree
responseGetDomainSuggestions =
  res
    "GetDomainSuggestionsResponse"
    "fixture/GetDomainSuggestionsResponse.proto"
    route53Domains
    (Proxy :: Proxy GetDomainSuggestions)

responseListDomains :: ListDomainsResponse -> TestTree
responseListDomains =
  res
    "ListDomainsResponse"
    "fixture/ListDomainsResponse.proto"
    route53Domains
    (Proxy :: Proxy ListDomains)

responseCancelDomainTransferToAnotherAWSAccount :: CancelDomainTransferToAnotherAWSAccountResponse -> TestTree
responseCancelDomainTransferToAnotherAWSAccount =
  res
    "CancelDomainTransferToAnotherAWSAccountResponse"
    "fixture/CancelDomainTransferToAnotherAWSAccountResponse.proto"
    route53Domains
    (Proxy :: Proxy CancelDomainTransferToAnotherAWSAccount)

responseEnableDomainTransferLock :: EnableDomainTransferLockResponse -> TestTree
responseEnableDomainTransferLock =
  res
    "EnableDomainTransferLockResponse"
    "fixture/EnableDomainTransferLockResponse.proto"
    route53Domains
    (Proxy :: Proxy EnableDomainTransferLock)

responseViewBilling :: ViewBillingResponse -> TestTree
responseViewBilling =
  res
    "ViewBillingResponse"
    "fixture/ViewBillingResponse.proto"
    route53Domains
    (Proxy :: Proxy ViewBilling)

responseDeleteTagsForDomain :: DeleteTagsForDomainResponse -> TestTree
responseDeleteTagsForDomain =
  res
    "DeleteTagsForDomainResponse"
    "fixture/DeleteTagsForDomainResponse.proto"
    route53Domains
    (Proxy :: Proxy DeleteTagsForDomain)

responseUpdateTagsForDomain :: UpdateTagsForDomainResponse -> TestTree
responseUpdateTagsForDomain =
  res
    "UpdateTagsForDomainResponse"
    "fixture/UpdateTagsForDomainResponse.proto"
    route53Domains
    (Proxy :: Proxy UpdateTagsForDomain)

responseListTagsForDomain :: ListTagsForDomainResponse -> TestTree
responseListTagsForDomain =
  res
    "ListTagsForDomainResponse"
    "fixture/ListTagsForDomainResponse.proto"
    route53Domains
    (Proxy :: Proxy ListTagsForDomain)

responseResendContactReachabilityEmail :: ResendContactReachabilityEmailResponse -> TestTree
responseResendContactReachabilityEmail =
  res
    "ResendContactReachabilityEmailResponse"
    "fixture/ResendContactReachabilityEmailResponse.proto"
    route53Domains
    (Proxy :: Proxy ResendContactReachabilityEmail)

responseDisableDomainAutoRenew :: DisableDomainAutoRenewResponse -> TestTree
responseDisableDomainAutoRenew =
  res
    "DisableDomainAutoRenewResponse"
    "fixture/DisableDomainAutoRenewResponse.proto"
    route53Domains
    (Proxy :: Proxy DisableDomainAutoRenew)

responseUpdateDomainNameservers :: UpdateDomainNameserversResponse -> TestTree
responseUpdateDomainNameservers =
  res
    "UpdateDomainNameserversResponse"
    "fixture/UpdateDomainNameserversResponse.proto"
    route53Domains
    (Proxy :: Proxy UpdateDomainNameservers)

responseEnableDomainAutoRenew :: EnableDomainAutoRenewResponse -> TestTree
responseEnableDomainAutoRenew =
  res
    "EnableDomainAutoRenewResponse"
    "fixture/EnableDomainAutoRenewResponse.proto"
    route53Domains
    (Proxy :: Proxy EnableDomainAutoRenew)

responseGetContactReachabilityStatus :: GetContactReachabilityStatusResponse -> TestTree
responseGetContactReachabilityStatus =
  res
    "GetContactReachabilityStatusResponse"
    "fixture/GetContactReachabilityStatusResponse.proto"
    route53Domains
    (Proxy :: Proxy GetContactReachabilityStatus)

responseRejectDomainTransferFromAnotherAWSAccount :: RejectDomainTransferFromAnotherAWSAccountResponse -> TestTree
responseRejectDomainTransferFromAnotherAWSAccount =
  res
    "RejectDomainTransferFromAnotherAWSAccountResponse"
    "fixture/RejectDomainTransferFromAnotherAWSAccountResponse.proto"
    route53Domains
    (Proxy :: Proxy RejectDomainTransferFromAnotherAWSAccount)

responseAcceptDomainTransferFromAnotherAWSAccount :: AcceptDomainTransferFromAnotherAWSAccountResponse -> TestTree
responseAcceptDomainTransferFromAnotherAWSAccount =
  res
    "AcceptDomainTransferFromAnotherAWSAccountResponse"
    "fixture/AcceptDomainTransferFromAnotherAWSAccountResponse.proto"
    route53Domains
    (Proxy :: Proxy AcceptDomainTransferFromAnotherAWSAccount)

responseGetOperationDetail :: GetOperationDetailResponse -> TestTree
responseGetOperationDetail =
  res
    "GetOperationDetailResponse"
    "fixture/GetOperationDetailResponse.proto"
    route53Domains
    (Proxy :: Proxy GetOperationDetail)

responseGetDomainDetail :: GetDomainDetailResponse -> TestTree
responseGetDomainDetail =
  res
    "GetDomainDetailResponse"
    "fixture/GetDomainDetailResponse.proto"
    route53Domains
    (Proxy :: Proxy GetDomainDetail)

responseUpdateDomainContact :: UpdateDomainContactResponse -> TestTree
responseUpdateDomainContact =
  res
    "UpdateDomainContactResponse"
    "fixture/UpdateDomainContactResponse.proto"
    route53Domains
    (Proxy :: Proxy UpdateDomainContact)

responseTransferDomain :: TransferDomainResponse -> TestTree
responseTransferDomain =
  res
    "TransferDomainResponse"
    "fixture/TransferDomainResponse.proto"
    route53Domains
    (Proxy :: Proxy TransferDomain)

responseRenewDomain :: RenewDomainResponse -> TestTree
responseRenewDomain =
  res
    "RenewDomainResponse"
    "fixture/RenewDomainResponse.proto"
    route53Domains
    (Proxy :: Proxy RenewDomain)

responseRetrieveDomainAuthCode :: RetrieveDomainAuthCodeResponse -> TestTree
responseRetrieveDomainAuthCode =
  res
    "RetrieveDomainAuthCodeResponse"
    "fixture/RetrieveDomainAuthCodeResponse.proto"
    route53Domains
    (Proxy :: Proxy RetrieveDomainAuthCode)
