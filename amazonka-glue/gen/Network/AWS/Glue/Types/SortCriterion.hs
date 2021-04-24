{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SortCriterion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SortCriterion where

import Network.AWS.Glue.Types.Sort
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies a field to sort by and a sort order.
--
--
--
-- /See:/ 'sortCriterion' smart constructor.
data SortCriterion = SortCriterion'
  { _scFieldName ::
      !(Maybe Text),
    _scSort :: !(Maybe Sort)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SortCriterion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scFieldName' - The name of the field on which to sort.
--
-- * 'scSort' - An ascending or descending sort.
sortCriterion ::
  SortCriterion
sortCriterion =
  SortCriterion'
    { _scFieldName = Nothing,
      _scSort = Nothing
    }

-- | The name of the field on which to sort.
scFieldName :: Lens' SortCriterion (Maybe Text)
scFieldName = lens _scFieldName (\s a -> s {_scFieldName = a})

-- | An ascending or descending sort.
scSort :: Lens' SortCriterion (Maybe Sort)
scSort = lens _scSort (\s a -> s {_scSort = a})

instance Hashable SortCriterion

instance NFData SortCriterion

instance ToJSON SortCriterion where
  toJSON SortCriterion' {..} =
    object
      ( catMaybes
          [ ("FieldName" .=) <$> _scFieldName,
            ("Sort" .=) <$> _scSort
          ]
      )
