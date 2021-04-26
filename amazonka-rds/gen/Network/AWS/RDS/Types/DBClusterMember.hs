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
-- Module      : Network.AWS.RDS.Types.DBClusterMember
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBClusterMember where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about an instance that is part of a DB cluster.
--
-- /See:/ 'newDBClusterMember' smart constructor.
data DBClusterMember = DBClusterMember'
  { -- | Value that is @true@ if the cluster member is the primary instance for
    -- the DB cluster and @false@ otherwise.
    isClusterWriter :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the instance identifier for this member of the DB cluster.
    dBInstanceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A value that specifies the order in which an Aurora Replica is promoted
    -- to the primary instance after a failure of the existing primary
    -- instance. For more information, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance Fault Tolerance for an Aurora DB Cluster>
    -- in the /Amazon Aurora User Guide/.
    promotionTier :: Prelude.Maybe Prelude.Int,
    -- | Specifies the status of the DB cluster parameter group for this member
    -- of the DB cluster.
    dBClusterParameterGroupStatus :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBClusterMember' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isClusterWriter', 'dBClusterMember_isClusterWriter' - Value that is @true@ if the cluster member is the primary instance for
-- the DB cluster and @false@ otherwise.
--
-- 'dBInstanceIdentifier', 'dBClusterMember_dBInstanceIdentifier' - Specifies the instance identifier for this member of the DB cluster.
--
-- 'promotionTier', 'dBClusterMember_promotionTier' - A value that specifies the order in which an Aurora Replica is promoted
-- to the primary instance after a failure of the existing primary
-- instance. For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance Fault Tolerance for an Aurora DB Cluster>
-- in the /Amazon Aurora User Guide/.
--
-- 'dBClusterParameterGroupStatus', 'dBClusterMember_dBClusterParameterGroupStatus' - Specifies the status of the DB cluster parameter group for this member
-- of the DB cluster.
newDBClusterMember ::
  DBClusterMember
newDBClusterMember =
  DBClusterMember'
    { isClusterWriter = Prelude.Nothing,
      dBInstanceIdentifier = Prelude.Nothing,
      promotionTier = Prelude.Nothing,
      dBClusterParameterGroupStatus = Prelude.Nothing
    }

-- | Value that is @true@ if the cluster member is the primary instance for
-- the DB cluster and @false@ otherwise.
dBClusterMember_isClusterWriter :: Lens.Lens' DBClusterMember (Prelude.Maybe Prelude.Bool)
dBClusterMember_isClusterWriter = Lens.lens (\DBClusterMember' {isClusterWriter} -> isClusterWriter) (\s@DBClusterMember' {} a -> s {isClusterWriter = a} :: DBClusterMember)

-- | Specifies the instance identifier for this member of the DB cluster.
dBClusterMember_dBInstanceIdentifier :: Lens.Lens' DBClusterMember (Prelude.Maybe Prelude.Text)
dBClusterMember_dBInstanceIdentifier = Lens.lens (\DBClusterMember' {dBInstanceIdentifier} -> dBInstanceIdentifier) (\s@DBClusterMember' {} a -> s {dBInstanceIdentifier = a} :: DBClusterMember)

-- | A value that specifies the order in which an Aurora Replica is promoted
-- to the primary instance after a failure of the existing primary
-- instance. For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance Fault Tolerance for an Aurora DB Cluster>
-- in the /Amazon Aurora User Guide/.
dBClusterMember_promotionTier :: Lens.Lens' DBClusterMember (Prelude.Maybe Prelude.Int)
dBClusterMember_promotionTier = Lens.lens (\DBClusterMember' {promotionTier} -> promotionTier) (\s@DBClusterMember' {} a -> s {promotionTier = a} :: DBClusterMember)

-- | Specifies the status of the DB cluster parameter group for this member
-- of the DB cluster.
dBClusterMember_dBClusterParameterGroupStatus :: Lens.Lens' DBClusterMember (Prelude.Maybe Prelude.Text)
dBClusterMember_dBClusterParameterGroupStatus = Lens.lens (\DBClusterMember' {dBClusterParameterGroupStatus} -> dBClusterParameterGroupStatus) (\s@DBClusterMember' {} a -> s {dBClusterParameterGroupStatus = a} :: DBClusterMember)

instance Prelude.FromXML DBClusterMember where
  parseXML x =
    DBClusterMember'
      Prelude.<$> (x Prelude..@? "IsClusterWriter")
      Prelude.<*> (x Prelude..@? "DBInstanceIdentifier")
      Prelude.<*> (x Prelude..@? "PromotionTier")
      Prelude.<*> (x Prelude..@? "DBClusterParameterGroupStatus")

instance Prelude.Hashable DBClusterMember

instance Prelude.NFData DBClusterMember
