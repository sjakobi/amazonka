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
-- Module      : Network.AWS.GameLift.Types.EC2InstanceCounts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.EC2InstanceCounts where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Current status of fleet capacity. The number of active instances should
-- match or be in the process of matching the number of desired instances.
-- Pending and terminating counts are non-zero only if fleet capacity is
-- adjusting to an UpdateFleetCapacity request, or if access to resources
-- is temporarily affected.
--
-- -   CreateFleet
--
-- -   ListFleets
--
-- -   DeleteFleet
--
-- -   DescribeFleetAttributes
--
-- -   UpdateFleetAttributes
--
-- -   StartFleetActions or StopFleetActions
--
-- /See:/ 'newEC2InstanceCounts' smart constructor.
data EC2InstanceCounts = EC2InstanceCounts'
  { -- | Number of active instances in the fleet that are not currently hosting a
    -- game session.
    iDLE :: Prelude.Maybe Prelude.Nat,
    -- | The minimum value allowed for the fleet\'s instance count.
    mINIMUM :: Prelude.Maybe Prelude.Nat,
    -- | Number of instances in the fleet that are starting but not yet active.
    pENDING :: Prelude.Maybe Prelude.Nat,
    -- | Actual number of active instances in the fleet.
    aCTIVE :: Prelude.Maybe Prelude.Nat,
    -- | Number of instances in the fleet that are no longer active but haven\'t
    -- yet been terminated.
    tERMINATING :: Prelude.Maybe Prelude.Nat,
    -- | The maximum value allowed for the fleet\'s instance count.
    mAXIMUM :: Prelude.Maybe Prelude.Nat,
    -- | Ideal number of active instances in the fleet.
    dESIRED :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'EC2InstanceCounts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'iDLE', 'eC2InstanceCounts_iDLE' - Number of active instances in the fleet that are not currently hosting a
-- game session.
--
-- 'mINIMUM', 'eC2InstanceCounts_mINIMUM' - The minimum value allowed for the fleet\'s instance count.
--
-- 'pENDING', 'eC2InstanceCounts_pENDING' - Number of instances in the fleet that are starting but not yet active.
--
-- 'aCTIVE', 'eC2InstanceCounts_aCTIVE' - Actual number of active instances in the fleet.
--
-- 'tERMINATING', 'eC2InstanceCounts_tERMINATING' - Number of instances in the fleet that are no longer active but haven\'t
-- yet been terminated.
--
-- 'mAXIMUM', 'eC2InstanceCounts_mAXIMUM' - The maximum value allowed for the fleet\'s instance count.
--
-- 'dESIRED', 'eC2InstanceCounts_dESIRED' - Ideal number of active instances in the fleet.
newEC2InstanceCounts ::
  EC2InstanceCounts
newEC2InstanceCounts =
  EC2InstanceCounts'
    { iDLE = Prelude.Nothing,
      mINIMUM = Prelude.Nothing,
      pENDING = Prelude.Nothing,
      aCTIVE = Prelude.Nothing,
      tERMINATING = Prelude.Nothing,
      mAXIMUM = Prelude.Nothing,
      dESIRED = Prelude.Nothing
    }

-- | Number of active instances in the fleet that are not currently hosting a
-- game session.
eC2InstanceCounts_iDLE :: Lens.Lens' EC2InstanceCounts (Prelude.Maybe Prelude.Natural)
eC2InstanceCounts_iDLE = Lens.lens (\EC2InstanceCounts' {iDLE} -> iDLE) (\s@EC2InstanceCounts' {} a -> s {iDLE = a} :: EC2InstanceCounts) Prelude.. Lens.mapping Prelude._Nat

-- | The minimum value allowed for the fleet\'s instance count.
eC2InstanceCounts_mINIMUM :: Lens.Lens' EC2InstanceCounts (Prelude.Maybe Prelude.Natural)
eC2InstanceCounts_mINIMUM = Lens.lens (\EC2InstanceCounts' {mINIMUM} -> mINIMUM) (\s@EC2InstanceCounts' {} a -> s {mINIMUM = a} :: EC2InstanceCounts) Prelude.. Lens.mapping Prelude._Nat

-- | Number of instances in the fleet that are starting but not yet active.
eC2InstanceCounts_pENDING :: Lens.Lens' EC2InstanceCounts (Prelude.Maybe Prelude.Natural)
eC2InstanceCounts_pENDING = Lens.lens (\EC2InstanceCounts' {pENDING} -> pENDING) (\s@EC2InstanceCounts' {} a -> s {pENDING = a} :: EC2InstanceCounts) Prelude.. Lens.mapping Prelude._Nat

-- | Actual number of active instances in the fleet.
eC2InstanceCounts_aCTIVE :: Lens.Lens' EC2InstanceCounts (Prelude.Maybe Prelude.Natural)
eC2InstanceCounts_aCTIVE = Lens.lens (\EC2InstanceCounts' {aCTIVE} -> aCTIVE) (\s@EC2InstanceCounts' {} a -> s {aCTIVE = a} :: EC2InstanceCounts) Prelude.. Lens.mapping Prelude._Nat

-- | Number of instances in the fleet that are no longer active but haven\'t
-- yet been terminated.
eC2InstanceCounts_tERMINATING :: Lens.Lens' EC2InstanceCounts (Prelude.Maybe Prelude.Natural)
eC2InstanceCounts_tERMINATING = Lens.lens (\EC2InstanceCounts' {tERMINATING} -> tERMINATING) (\s@EC2InstanceCounts' {} a -> s {tERMINATING = a} :: EC2InstanceCounts) Prelude.. Lens.mapping Prelude._Nat

-- | The maximum value allowed for the fleet\'s instance count.
eC2InstanceCounts_mAXIMUM :: Lens.Lens' EC2InstanceCounts (Prelude.Maybe Prelude.Natural)
eC2InstanceCounts_mAXIMUM = Lens.lens (\EC2InstanceCounts' {mAXIMUM} -> mAXIMUM) (\s@EC2InstanceCounts' {} a -> s {mAXIMUM = a} :: EC2InstanceCounts) Prelude.. Lens.mapping Prelude._Nat

-- | Ideal number of active instances in the fleet.
eC2InstanceCounts_dESIRED :: Lens.Lens' EC2InstanceCounts (Prelude.Maybe Prelude.Natural)
eC2InstanceCounts_dESIRED = Lens.lens (\EC2InstanceCounts' {dESIRED} -> dESIRED) (\s@EC2InstanceCounts' {} a -> s {dESIRED = a} :: EC2InstanceCounts) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.FromJSON EC2InstanceCounts where
  parseJSON =
    Prelude.withObject
      "EC2InstanceCounts"
      ( \x ->
          EC2InstanceCounts'
            Prelude.<$> (x Prelude..:? "IDLE")
            Prelude.<*> (x Prelude..:? "MINIMUM")
            Prelude.<*> (x Prelude..:? "PENDING")
            Prelude.<*> (x Prelude..:? "ACTIVE")
            Prelude.<*> (x Prelude..:? "TERMINATING")
            Prelude.<*> (x Prelude..:? "MAXIMUM")
            Prelude.<*> (x Prelude..:? "DESIRED")
      )

instance Prelude.Hashable EC2InstanceCounts

instance Prelude.NFData EC2InstanceCounts
