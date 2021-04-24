{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.FacetAttributeDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.FacetAttributeDefinition where

import Network.AWS.CloudDirectory.Types.FacetAttributeType
import Network.AWS.CloudDirectory.Types.Rule
import Network.AWS.CloudDirectory.Types.TypedAttributeValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A facet attribute definition. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html Attribute References> for more information.
--
--
--
-- /See:/ 'facetAttributeDefinition' smart constructor.
data FacetAttributeDefinition = FacetAttributeDefinition'
  { _fadIsImmutable ::
      !(Maybe Bool),
    _fadRules ::
      !( Maybe
           (Map Text Rule)
       ),
    _fadDefaultValue ::
      !( Maybe
           TypedAttributeValue
       ),
    _fadType ::
      !FacetAttributeType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'FacetAttributeDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fadIsImmutable' - Whether the attribute is mutable or not.
--
-- * 'fadRules' - Validation rules attached to the attribute definition.
--
-- * 'fadDefaultValue' - The default value of the attribute (if configured).
--
-- * 'fadType' - The type of the attribute.
facetAttributeDefinition ::
  -- | 'fadType'
  FacetAttributeType ->
  FacetAttributeDefinition
facetAttributeDefinition pType_ =
  FacetAttributeDefinition'
    { _fadIsImmutable =
        Nothing,
      _fadRules = Nothing,
      _fadDefaultValue = Nothing,
      _fadType = pType_
    }

-- | Whether the attribute is mutable or not.
fadIsImmutable :: Lens' FacetAttributeDefinition (Maybe Bool)
fadIsImmutable = lens _fadIsImmutable (\s a -> s {_fadIsImmutable = a})

-- | Validation rules attached to the attribute definition.
fadRules :: Lens' FacetAttributeDefinition (HashMap Text Rule)
fadRules = lens _fadRules (\s a -> s {_fadRules = a}) . _Default . _Map

-- | The default value of the attribute (if configured).
fadDefaultValue :: Lens' FacetAttributeDefinition (Maybe TypedAttributeValue)
fadDefaultValue = lens _fadDefaultValue (\s a -> s {_fadDefaultValue = a})

-- | The type of the attribute.
fadType :: Lens' FacetAttributeDefinition FacetAttributeType
fadType = lens _fadType (\s a -> s {_fadType = a})

instance FromJSON FacetAttributeDefinition where
  parseJSON =
    withObject
      "FacetAttributeDefinition"
      ( \x ->
          FacetAttributeDefinition'
            <$> (x .:? "IsImmutable")
            <*> (x .:? "Rules" .!= mempty)
            <*> (x .:? "DefaultValue")
            <*> (x .: "Type")
      )

instance Hashable FacetAttributeDefinition

instance NFData FacetAttributeDefinition

instance ToJSON FacetAttributeDefinition where
  toJSON FacetAttributeDefinition' {..} =
    object
      ( catMaybes
          [ ("IsImmutable" .=) <$> _fadIsImmutable,
            ("Rules" .=) <$> _fadRules,
            ("DefaultValue" .=) <$> _fadDefaultValue,
            Just ("Type" .= _fadType)
          ]
      )
