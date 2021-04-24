{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.TransferDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered either with Amazon Registrar (for .com, .net, and .org domains) or with our registrar associate, Gandi (for all other TLDs).
--
--
-- For more information about transferring domains, see the following topics:
--
--     * For transfer requirements, a detailed procedure, and information about viewing the status of a domain that you're transferring to Route 53, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html Transferring Registration for a Domain to Amazon Route 53> in the /Amazon Route 53 Developer Guide/ .
--
--     * For information about how to transfer a domain from one AWS account to another, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html TransferDomainToAnotherAwsAccount> .
--
--     * For information about how to transfer a domain to another domain registrar, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-from-route-53.html Transferring a Domain from Amazon Route 53 to Another Registrar> in the /Amazon Route 53 Developer Guide/ .
--
--
--
-- If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you transfer your DNS service to Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.
--
-- /Important:/ If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.
--
-- If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.
module Network.AWS.Route53Domains.TransferDomain
  ( -- * Creating a Request
    transferDomain,
    TransferDomain,

    -- * Request Lenses
    tdAutoRenew,
    tdNameservers,
    tdAuthCode,
    tdIdNLangCode,
    tdPrivacyProtectTechContact,
    tdPrivacyProtectRegistrantContact,
    tdPrivacyProtectAdminContact,
    tdDomainName,
    tdDurationInYears,
    tdAdminContact,
    tdRegistrantContact,
    tdTechContact,

    -- * Destructuring the Response
    transferDomainResponse,
    TransferDomainResponse,

    -- * Response Lenses
    tdrrsResponseStatus,
    tdrrsOperationId,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | The TransferDomain request includes the following elements.
--
--
--
-- /See:/ 'transferDomain' smart constructor.
data TransferDomain = TransferDomain'
  { _tdAutoRenew ::
      !(Maybe Bool),
    _tdNameservers :: !(Maybe [Nameserver]),
    _tdAuthCode :: !(Maybe (Sensitive Text)),
    _tdIdNLangCode :: !(Maybe Text),
    _tdPrivacyProtectTechContact ::
      !(Maybe Bool),
    _tdPrivacyProtectRegistrantContact ::
      !(Maybe Bool),
    _tdPrivacyProtectAdminContact ::
      !(Maybe Bool),
    _tdDomainName :: !Text,
    _tdDurationInYears :: !Nat,
    _tdAdminContact ::
      !(Sensitive ContactDetail),
    _tdRegistrantContact ::
      !(Sensitive ContactDetail),
    _tdTechContact ::
      !(Sensitive ContactDetail)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TransferDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdAutoRenew' - Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect after the account is charged. Default: true
--
-- * 'tdNameservers' - Contains details for the host and glue IP addresses.
--
-- * 'tdAuthCode' - The authorization code for the domain. You get this value from the current registrar.
--
-- * 'tdIdNLangCode' - Reserved for future use.
--
-- * 'tdPrivacyProtectTechContact' - Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the technical contact. Default: @true@
--
-- * 'tdPrivacyProtectRegistrantContact' - Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the registrant contact (domain owner). Default: @true@
--
-- * 'tdPrivacyProtectAdminContact' - Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the admin contact. Default: @true@
--
-- * 'tdDomainName' - The name of the domain that you want to transfer to Route 53. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> in the /Amazon Route 53 Developer Guide/ . The domain name can contain only the following characters:     * Letters a through z. Domain names are not case sensitive.     * Numbers 0 through 9.     * Hyphen (-). You can't specify a hyphen at the beginning or end of a label.      * Period (.) to separate the labels in the name, such as the @.@ in @example.com@ .
--
-- * 'tdDurationInYears' - The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain. Default: 1
--
-- * 'tdAdminContact' - Provides detailed contact information.
--
-- * 'tdRegistrantContact' - Provides detailed contact information.
--
-- * 'tdTechContact' - Provides detailed contact information.
transferDomain ::
  -- | 'tdDomainName'
  Text ->
  -- | 'tdDurationInYears'
  Natural ->
  -- | 'tdAdminContact'
  ContactDetail ->
  -- | 'tdRegistrantContact'
  ContactDetail ->
  -- | 'tdTechContact'
  ContactDetail ->
  TransferDomain
transferDomain
  pDomainName_
  pDurationInYears_
  pAdminContact_
  pRegistrantContact_
  pTechContact_ =
    TransferDomain'
      { _tdAutoRenew = Nothing,
        _tdNameservers = Nothing,
        _tdAuthCode = Nothing,
        _tdIdNLangCode = Nothing,
        _tdPrivacyProtectTechContact = Nothing,
        _tdPrivacyProtectRegistrantContact = Nothing,
        _tdPrivacyProtectAdminContact = Nothing,
        _tdDomainName = pDomainName_,
        _tdDurationInYears = _Nat # pDurationInYears_,
        _tdAdminContact = _Sensitive # pAdminContact_,
        _tdRegistrantContact =
          _Sensitive # pRegistrantContact_,
        _tdTechContact = _Sensitive # pTechContact_
      }

-- | Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect after the account is charged. Default: true
tdAutoRenew :: Lens' TransferDomain (Maybe Bool)
tdAutoRenew = lens _tdAutoRenew (\s a -> s {_tdAutoRenew = a})

-- | Contains details for the host and glue IP addresses.
tdNameservers :: Lens' TransferDomain [Nameserver]
tdNameservers = lens _tdNameservers (\s a -> s {_tdNameservers = a}) . _Default . _Coerce

-- | The authorization code for the domain. You get this value from the current registrar.
tdAuthCode :: Lens' TransferDomain (Maybe Text)
tdAuthCode = lens _tdAuthCode (\s a -> s {_tdAuthCode = a}) . mapping _Sensitive

-- | Reserved for future use.
tdIdNLangCode :: Lens' TransferDomain (Maybe Text)
tdIdNLangCode = lens _tdIdNLangCode (\s a -> s {_tdIdNLangCode = a})

-- | Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the technical contact. Default: @true@
tdPrivacyProtectTechContact :: Lens' TransferDomain (Maybe Bool)
tdPrivacyProtectTechContact = lens _tdPrivacyProtectTechContact (\s a -> s {_tdPrivacyProtectTechContact = a})

-- | Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the registrant contact (domain owner). Default: @true@
tdPrivacyProtectRegistrantContact :: Lens' TransferDomain (Maybe Bool)
tdPrivacyProtectRegistrantContact = lens _tdPrivacyProtectRegistrantContact (\s a -> s {_tdPrivacyProtectRegistrantContact = a})

-- | Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the admin contact. Default: @true@
tdPrivacyProtectAdminContact :: Lens' TransferDomain (Maybe Bool)
tdPrivacyProtectAdminContact = lens _tdPrivacyProtectAdminContact (\s a -> s {_tdPrivacyProtectAdminContact = a})

-- | The name of the domain that you want to transfer to Route 53. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> in the /Amazon Route 53 Developer Guide/ . The domain name can contain only the following characters:     * Letters a through z. Domain names are not case sensitive.     * Numbers 0 through 9.     * Hyphen (-). You can't specify a hyphen at the beginning or end of a label.      * Period (.) to separate the labels in the name, such as the @.@ in @example.com@ .
tdDomainName :: Lens' TransferDomain Text
tdDomainName = lens _tdDomainName (\s a -> s {_tdDomainName = a})

-- | The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain. Default: 1
tdDurationInYears :: Lens' TransferDomain Natural
tdDurationInYears = lens _tdDurationInYears (\s a -> s {_tdDurationInYears = a}) . _Nat

-- | Provides detailed contact information.
tdAdminContact :: Lens' TransferDomain ContactDetail
tdAdminContact = lens _tdAdminContact (\s a -> s {_tdAdminContact = a}) . _Sensitive

-- | Provides detailed contact information.
tdRegistrantContact :: Lens' TransferDomain ContactDetail
tdRegistrantContact = lens _tdRegistrantContact (\s a -> s {_tdRegistrantContact = a}) . _Sensitive

-- | Provides detailed contact information.
tdTechContact :: Lens' TransferDomain ContactDetail
tdTechContact = lens _tdTechContact (\s a -> s {_tdTechContact = a}) . _Sensitive

instance AWSRequest TransferDomain where
  type Rs TransferDomain = TransferDomainResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          TransferDomainResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "OperationId")
      )

instance Hashable TransferDomain

instance NFData TransferDomain

instance ToHeaders TransferDomain where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.TransferDomain" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TransferDomain where
  toJSON TransferDomain' {..} =
    object
      ( catMaybes
          [ ("AutoRenew" .=) <$> _tdAutoRenew,
            ("Nameservers" .=) <$> _tdNameservers,
            ("AuthCode" .=) <$> _tdAuthCode,
            ("IdnLangCode" .=) <$> _tdIdNLangCode,
            ("PrivacyProtectTechContact" .=)
              <$> _tdPrivacyProtectTechContact,
            ("PrivacyProtectRegistrantContact" .=)
              <$> _tdPrivacyProtectRegistrantContact,
            ("PrivacyProtectAdminContact" .=)
              <$> _tdPrivacyProtectAdminContact,
            Just ("DomainName" .= _tdDomainName),
            Just ("DurationInYears" .= _tdDurationInYears),
            Just ("AdminContact" .= _tdAdminContact),
            Just ("RegistrantContact" .= _tdRegistrantContact),
            Just ("TechContact" .= _tdTechContact)
          ]
      )

instance ToPath TransferDomain where
  toPath = const "/"

instance ToQuery TransferDomain where
  toQuery = const mempty

-- | The TransferDomain response includes the following element.
--
--
--
-- /See:/ 'transferDomainResponse' smart constructor.
data TransferDomainResponse = TransferDomainResponse'
  { _tdrrsResponseStatus ::
      !Int,
    _tdrrsOperationId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TransferDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdrrsResponseStatus' - -- | The response status code.
--
-- * 'tdrrsOperationId' - Identifier for tracking the progress of the request. To query the operation status, use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html GetOperationDetail> .
transferDomainResponse ::
  -- | 'tdrrsResponseStatus'
  Int ->
  -- | 'tdrrsOperationId'
  Text ->
  TransferDomainResponse
transferDomainResponse pResponseStatus_ pOperationId_ =
  TransferDomainResponse'
    { _tdrrsResponseStatus =
        pResponseStatus_,
      _tdrrsOperationId = pOperationId_
    }

-- | -- | The response status code.
tdrrsResponseStatus :: Lens' TransferDomainResponse Int
tdrrsResponseStatus = lens _tdrrsResponseStatus (\s a -> s {_tdrrsResponseStatus = a})

-- | Identifier for tracking the progress of the request. To query the operation status, use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html GetOperationDetail> .
tdrrsOperationId :: Lens' TransferDomainResponse Text
tdrrsOperationId = lens _tdrrsOperationId (\s a -> s {_tdrrsOperationId = a})

instance NFData TransferDomainResponse
