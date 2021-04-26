{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBSubnetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBSubnetGroup where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.Subnet

-- | Contains the details of an Amazon RDS DB subnet group.
--
-- This data type is used as a response element in the
-- @DescribeDBSubnetGroups@ action.
--
-- /See:/ 'newDBSubnetGroup' smart constructor.
data DBSubnetGroup = DBSubnetGroup'
  { -- | Provides the status of the DB subnet group.
    subnetGroupStatus :: Prelude.Maybe Prelude.Text,
    -- | The name of the DB subnet group.
    dBSubnetGroupName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the DB subnet group.
    dBSubnetGroupArn :: Prelude.Maybe Prelude.Text,
    -- | Provides the description of the DB subnet group.
    dBSubnetGroupDescription :: Prelude.Maybe Prelude.Text,
    -- | Contains a list of @Subnet@ elements.
    subnets :: Prelude.Maybe [Subnet],
    -- | Provides the VpcId of the DB subnet group.
    vpcId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBSubnetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subnetGroupStatus', 'dBSubnetGroup_subnetGroupStatus' - Provides the status of the DB subnet group.
--
-- 'dBSubnetGroupName', 'dBSubnetGroup_dBSubnetGroupName' - The name of the DB subnet group.
--
-- 'dBSubnetGroupArn', 'dBSubnetGroup_dBSubnetGroupArn' - The Amazon Resource Name (ARN) for the DB subnet group.
--
-- 'dBSubnetGroupDescription', 'dBSubnetGroup_dBSubnetGroupDescription' - Provides the description of the DB subnet group.
--
-- 'subnets', 'dBSubnetGroup_subnets' - Contains a list of @Subnet@ elements.
--
-- 'vpcId', 'dBSubnetGroup_vpcId' - Provides the VpcId of the DB subnet group.
newDBSubnetGroup ::
  DBSubnetGroup
newDBSubnetGroup =
  DBSubnetGroup'
    { subnetGroupStatus = Prelude.Nothing,
      dBSubnetGroupName = Prelude.Nothing,
      dBSubnetGroupArn = Prelude.Nothing,
      dBSubnetGroupDescription = Prelude.Nothing,
      subnets = Prelude.Nothing,
      vpcId = Prelude.Nothing
    }

-- | Provides the status of the DB subnet group.
dBSubnetGroup_subnetGroupStatus :: Lens.Lens' DBSubnetGroup (Prelude.Maybe Prelude.Text)
dBSubnetGroup_subnetGroupStatus = Lens.lens (\DBSubnetGroup' {subnetGroupStatus} -> subnetGroupStatus) (\s@DBSubnetGroup' {} a -> s {subnetGroupStatus = a} :: DBSubnetGroup)

-- | The name of the DB subnet group.
dBSubnetGroup_dBSubnetGroupName :: Lens.Lens' DBSubnetGroup (Prelude.Maybe Prelude.Text)
dBSubnetGroup_dBSubnetGroupName = Lens.lens (\DBSubnetGroup' {dBSubnetGroupName} -> dBSubnetGroupName) (\s@DBSubnetGroup' {} a -> s {dBSubnetGroupName = a} :: DBSubnetGroup)

-- | The Amazon Resource Name (ARN) for the DB subnet group.
dBSubnetGroup_dBSubnetGroupArn :: Lens.Lens' DBSubnetGroup (Prelude.Maybe Prelude.Text)
dBSubnetGroup_dBSubnetGroupArn = Lens.lens (\DBSubnetGroup' {dBSubnetGroupArn} -> dBSubnetGroupArn) (\s@DBSubnetGroup' {} a -> s {dBSubnetGroupArn = a} :: DBSubnetGroup)

-- | Provides the description of the DB subnet group.
dBSubnetGroup_dBSubnetGroupDescription :: Lens.Lens' DBSubnetGroup (Prelude.Maybe Prelude.Text)
dBSubnetGroup_dBSubnetGroupDescription = Lens.lens (\DBSubnetGroup' {dBSubnetGroupDescription} -> dBSubnetGroupDescription) (\s@DBSubnetGroup' {} a -> s {dBSubnetGroupDescription = a} :: DBSubnetGroup)

-- | Contains a list of @Subnet@ elements.
dBSubnetGroup_subnets :: Lens.Lens' DBSubnetGroup (Prelude.Maybe [Subnet])
dBSubnetGroup_subnets = Lens.lens (\DBSubnetGroup' {subnets} -> subnets) (\s@DBSubnetGroup' {} a -> s {subnets = a} :: DBSubnetGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | Provides the VpcId of the DB subnet group.
dBSubnetGroup_vpcId :: Lens.Lens' DBSubnetGroup (Prelude.Maybe Prelude.Text)
dBSubnetGroup_vpcId = Lens.lens (\DBSubnetGroup' {vpcId} -> vpcId) (\s@DBSubnetGroup' {} a -> s {vpcId = a} :: DBSubnetGroup)

instance Prelude.FromXML DBSubnetGroup where
  parseXML x =
    DBSubnetGroup'
      Prelude.<$> (x Prelude..@? "SubnetGroupStatus")
      Prelude.<*> (x Prelude..@? "DBSubnetGroupName")
      Prelude.<*> (x Prelude..@? "DBSubnetGroupArn")
      Prelude.<*> (x Prelude..@? "DBSubnetGroupDescription")
      Prelude.<*> ( x Prelude..@? "Subnets" Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "Subnet")
                  )
      Prelude.<*> (x Prelude..@? "VpcId")

instance Prelude.Hashable DBSubnetGroup

instance Prelude.NFData DBSubnetGroup
