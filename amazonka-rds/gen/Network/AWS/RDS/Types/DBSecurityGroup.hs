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
-- Module      : Network.AWS.RDS.Types.DBSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBSecurityGroup where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.EC2SecurityGroup
import Network.AWS.RDS.Types.IPRange

-- | Contains the details for an Amazon RDS DB security group.
--
-- This data type is used as a response element in the
-- @DescribeDBSecurityGroups@ action.
--
-- /See:/ 'newDBSecurityGroup' smart constructor.
data DBSecurityGroup = DBSecurityGroup'
  { -- | Provides the AWS ID of the owner of a specific DB security group.
    ownerId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the name of the DB security group.
    dBSecurityGroupName :: Prelude.Maybe Prelude.Text,
    -- | Contains a list of @IPRange@ elements.
    iPRanges :: Prelude.Maybe [IPRange],
    -- | Provides the description of the DB security group.
    dBSecurityGroupDescription :: Prelude.Maybe Prelude.Text,
    -- | Contains a list of @EC2SecurityGroup@ elements.
    eC2SecurityGroups :: Prelude.Maybe [EC2SecurityGroup],
    -- | Provides the VpcId of the DB security group.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the DB security group.
    dBSecurityGroupArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBSecurityGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ownerId', 'dBSecurityGroup_ownerId' - Provides the AWS ID of the owner of a specific DB security group.
--
-- 'dBSecurityGroupName', 'dBSecurityGroup_dBSecurityGroupName' - Specifies the name of the DB security group.
--
-- 'iPRanges', 'dBSecurityGroup_iPRanges' - Contains a list of @IPRange@ elements.
--
-- 'dBSecurityGroupDescription', 'dBSecurityGroup_dBSecurityGroupDescription' - Provides the description of the DB security group.
--
-- 'eC2SecurityGroups', 'dBSecurityGroup_eC2SecurityGroups' - Contains a list of @EC2SecurityGroup@ elements.
--
-- 'vpcId', 'dBSecurityGroup_vpcId' - Provides the VpcId of the DB security group.
--
-- 'dBSecurityGroupArn', 'dBSecurityGroup_dBSecurityGroupArn' - The Amazon Resource Name (ARN) for the DB security group.
newDBSecurityGroup ::
  DBSecurityGroup
newDBSecurityGroup =
  DBSecurityGroup'
    { ownerId = Prelude.Nothing,
      dBSecurityGroupName = Prelude.Nothing,
      iPRanges = Prelude.Nothing,
      dBSecurityGroupDescription = Prelude.Nothing,
      eC2SecurityGroups = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      dBSecurityGroupArn = Prelude.Nothing
    }

-- | Provides the AWS ID of the owner of a specific DB security group.
dBSecurityGroup_ownerId :: Lens.Lens' DBSecurityGroup (Prelude.Maybe Prelude.Text)
dBSecurityGroup_ownerId = Lens.lens (\DBSecurityGroup' {ownerId} -> ownerId) (\s@DBSecurityGroup' {} a -> s {ownerId = a} :: DBSecurityGroup)

-- | Specifies the name of the DB security group.
dBSecurityGroup_dBSecurityGroupName :: Lens.Lens' DBSecurityGroup (Prelude.Maybe Prelude.Text)
dBSecurityGroup_dBSecurityGroupName = Lens.lens (\DBSecurityGroup' {dBSecurityGroupName} -> dBSecurityGroupName) (\s@DBSecurityGroup' {} a -> s {dBSecurityGroupName = a} :: DBSecurityGroup)

-- | Contains a list of @IPRange@ elements.
dBSecurityGroup_iPRanges :: Lens.Lens' DBSecurityGroup (Prelude.Maybe [IPRange])
dBSecurityGroup_iPRanges = Lens.lens (\DBSecurityGroup' {iPRanges} -> iPRanges) (\s@DBSecurityGroup' {} a -> s {iPRanges = a} :: DBSecurityGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | Provides the description of the DB security group.
dBSecurityGroup_dBSecurityGroupDescription :: Lens.Lens' DBSecurityGroup (Prelude.Maybe Prelude.Text)
dBSecurityGroup_dBSecurityGroupDescription = Lens.lens (\DBSecurityGroup' {dBSecurityGroupDescription} -> dBSecurityGroupDescription) (\s@DBSecurityGroup' {} a -> s {dBSecurityGroupDescription = a} :: DBSecurityGroup)

-- | Contains a list of @EC2SecurityGroup@ elements.
dBSecurityGroup_eC2SecurityGroups :: Lens.Lens' DBSecurityGroup (Prelude.Maybe [EC2SecurityGroup])
dBSecurityGroup_eC2SecurityGroups = Lens.lens (\DBSecurityGroup' {eC2SecurityGroups} -> eC2SecurityGroups) (\s@DBSecurityGroup' {} a -> s {eC2SecurityGroups = a} :: DBSecurityGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | Provides the VpcId of the DB security group.
dBSecurityGroup_vpcId :: Lens.Lens' DBSecurityGroup (Prelude.Maybe Prelude.Text)
dBSecurityGroup_vpcId = Lens.lens (\DBSecurityGroup' {vpcId} -> vpcId) (\s@DBSecurityGroup' {} a -> s {vpcId = a} :: DBSecurityGroup)

-- | The Amazon Resource Name (ARN) for the DB security group.
dBSecurityGroup_dBSecurityGroupArn :: Lens.Lens' DBSecurityGroup (Prelude.Maybe Prelude.Text)
dBSecurityGroup_dBSecurityGroupArn = Lens.lens (\DBSecurityGroup' {dBSecurityGroupArn} -> dBSecurityGroupArn) (\s@DBSecurityGroup' {} a -> s {dBSecurityGroupArn = a} :: DBSecurityGroup)

instance Prelude.FromXML DBSecurityGroup where
  parseXML x =
    DBSecurityGroup'
      Prelude.<$> (x Prelude..@? "OwnerId")
      Prelude.<*> (x Prelude..@? "DBSecurityGroupName")
      Prelude.<*> ( x Prelude..@? "IPRanges" Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "IPRange")
                  )
      Prelude.<*> (x Prelude..@? "DBSecurityGroupDescription")
      Prelude.<*> ( x Prelude..@? "EC2SecurityGroups"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "EC2SecurityGroup")
                  )
      Prelude.<*> (x Prelude..@? "VpcId")
      Prelude.<*> (x Prelude..@? "DBSecurityGroupArn")

instance Prelude.Hashable DBSecurityGroup

instance Prelude.NFData DBSecurityGroup
