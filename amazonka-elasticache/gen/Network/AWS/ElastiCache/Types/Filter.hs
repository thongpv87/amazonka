{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.Filter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.Filter where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Used to streamline results of a search based on the property being
-- filtered.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter'
  { -- | The property being filtered. For example, UserId.
    name :: Prelude.Text,
    -- | The property values to filter on. For example, \"user-123\".
    values :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Filter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'filter_name' - The property being filtered. For example, UserId.
--
-- 'values', 'filter_values' - The property values to filter on. For example, \"user-123\".
newFilter ::
  -- | 'name'
  Prelude.Text ->
  -- | 'values'
  Prelude.NonEmpty Prelude.Text ->
  Filter
newFilter pName_ pValues_ =
  Filter'
    { name = pName_,
      values = Prelude._Coerce Lens.# pValues_
    }

-- | The property being filtered. For example, UserId.
filter_name :: Lens.Lens' Filter Prelude.Text
filter_name = Lens.lens (\Filter' {name} -> name) (\s@Filter' {} a -> s {name = a} :: Filter)

-- | The property values to filter on. For example, \"user-123\".
filter_values :: Lens.Lens' Filter (Prelude.NonEmpty Prelude.Text)
filter_values = Lens.lens (\Filter' {values} -> values) (\s@Filter' {} a -> s {values = a} :: Filter) Prelude.. Prelude._Coerce

instance Prelude.Hashable Filter

instance Prelude.NFData Filter

instance Prelude.ToQuery Filter where
  toQuery Filter' {..} =
    Prelude.mconcat
      [ "Name" Prelude.=: name,
        "Values"
          Prelude.=: Prelude.toQueryList "member" values
      ]
