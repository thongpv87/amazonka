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
-- Module      : Network.AWS.CostExplorer.Types.ReservationCoverageGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.ReservationCoverageGroup where

import Network.AWS.CostExplorer.Types.Coverage
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A group of reservations that share a set of attributes.
--
-- /See:/ 'newReservationCoverageGroup' smart constructor.
data ReservationCoverageGroup = ReservationCoverageGroup'
  { -- | The attributes for this group of reservations.
    attributes :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | How much instance usage this group of reservations covered.
    coverage :: Prelude.Maybe Coverage
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ReservationCoverageGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributes', 'reservationCoverageGroup_attributes' - The attributes for this group of reservations.
--
-- 'coverage', 'reservationCoverageGroup_coverage' - How much instance usage this group of reservations covered.
newReservationCoverageGroup ::
  ReservationCoverageGroup
newReservationCoverageGroup =
  ReservationCoverageGroup'
    { attributes =
        Prelude.Nothing,
      coverage = Prelude.Nothing
    }

-- | The attributes for this group of reservations.
reservationCoverageGroup_attributes :: Lens.Lens' ReservationCoverageGroup (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
reservationCoverageGroup_attributes = Lens.lens (\ReservationCoverageGroup' {attributes} -> attributes) (\s@ReservationCoverageGroup' {} a -> s {attributes = a} :: ReservationCoverageGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | How much instance usage this group of reservations covered.
reservationCoverageGroup_coverage :: Lens.Lens' ReservationCoverageGroup (Prelude.Maybe Coverage)
reservationCoverageGroup_coverage = Lens.lens (\ReservationCoverageGroup' {coverage} -> coverage) (\s@ReservationCoverageGroup' {} a -> s {coverage = a} :: ReservationCoverageGroup)

instance Prelude.FromJSON ReservationCoverageGroup where
  parseJSON =
    Prelude.withObject
      "ReservationCoverageGroup"
      ( \x ->
          ReservationCoverageGroup'
            Prelude.<$> ( x Prelude..:? "Attributes"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "Coverage")
      )

instance Prelude.Hashable ReservationCoverageGroup

instance Prelude.NFData ReservationCoverageGroup
