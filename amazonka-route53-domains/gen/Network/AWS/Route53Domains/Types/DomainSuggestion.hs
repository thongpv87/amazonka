{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.Types.DomainSuggestion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.DomainSuggestion where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about one suggested domain name.
--
--
--
-- /See:/ 'domainSuggestion' smart constructor.
data DomainSuggestion = DomainSuggestion'
  { _dsAvailability ::
      !(Maybe Text),
    _dsDomainName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DomainSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsAvailability' - Whether the domain name is available for registering. Valid values:     * AVAILABLE    * The domain name is available.     * AVAILABLE_RESERVED    * The domain name is reserved under specific conditions.     * AVAILABLE_PREORDER    * The domain name is available and can be preordered.     * DONT_KNOW    * The TLD registry didn't reply with a definitive answer about whether the domain name is available. Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. Try again later.     * PENDING    * The TLD registry didn't return a response in the expected amount of time. When the response is delayed, it usually takes just a few extra seconds. You can resubmit the request immediately.     * RESERVED    * The domain name has been reserved for another person or organization.     * UNAVAILABLE    * The domain name is not available.     * UNAVAILABLE_PREMIUM    * The domain name is not available.     * UNAVAILABLE_RESTRICTED    * The domain name is forbidden.
--
-- * 'dsDomainName' - A suggested domain name.
domainSuggestion ::
  DomainSuggestion
domainSuggestion =
  DomainSuggestion'
    { _dsAvailability = Nothing,
      _dsDomainName = Nothing
    }

-- | Whether the domain name is available for registering. Valid values:     * AVAILABLE    * The domain name is available.     * AVAILABLE_RESERVED    * The domain name is reserved under specific conditions.     * AVAILABLE_PREORDER    * The domain name is available and can be preordered.     * DONT_KNOW    * The TLD registry didn't reply with a definitive answer about whether the domain name is available. Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. Try again later.     * PENDING    * The TLD registry didn't return a response in the expected amount of time. When the response is delayed, it usually takes just a few extra seconds. You can resubmit the request immediately.     * RESERVED    * The domain name has been reserved for another person or organization.     * UNAVAILABLE    * The domain name is not available.     * UNAVAILABLE_PREMIUM    * The domain name is not available.     * UNAVAILABLE_RESTRICTED    * The domain name is forbidden.
dsAvailability :: Lens' DomainSuggestion (Maybe Text)
dsAvailability = lens _dsAvailability (\s a -> s {_dsAvailability = a})

-- | A suggested domain name.
dsDomainName :: Lens' DomainSuggestion (Maybe Text)
dsDomainName = lens _dsDomainName (\s a -> s {_dsDomainName = a})

instance FromJSON DomainSuggestion where
  parseJSON =
    withObject
      "DomainSuggestion"
      ( \x ->
          DomainSuggestion'
            <$> (x .:? "Availability") <*> (x .:? "DomainName")
      )

instance Hashable DomainSuggestion

instance NFData DomainSuggestion
