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
-- Module      : Network.AWS.RDS.Types.DBClusterParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBClusterParameterGroup where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the details of an Amazon RDS DB cluster parameter group.
--
-- This data type is used as a response element in the
-- @DescribeDBClusterParameterGroups@ action.
--
-- /See:/ 'newDBClusterParameterGroup' smart constructor.
data DBClusterParameterGroup = DBClusterParameterGroup'
  { -- | The Amazon Resource Name (ARN) for the DB cluster parameter group.
    dBClusterParameterGroupArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the DB parameter group family that this DB cluster parameter
    -- group is compatible with.
    dBParameterGroupFamily :: Prelude.Maybe Prelude.Text,
    -- | Provides the customer-specified description for this DB cluster
    -- parameter group.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the DB cluster parameter group.
    dBClusterParameterGroupName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBClusterParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBClusterParameterGroupArn', 'dBClusterParameterGroup_dBClusterParameterGroupArn' - The Amazon Resource Name (ARN) for the DB cluster parameter group.
--
-- 'dBParameterGroupFamily', 'dBClusterParameterGroup_dBParameterGroupFamily' - The name of the DB parameter group family that this DB cluster parameter
-- group is compatible with.
--
-- 'description', 'dBClusterParameterGroup_description' - Provides the customer-specified description for this DB cluster
-- parameter group.
--
-- 'dBClusterParameterGroupName', 'dBClusterParameterGroup_dBClusterParameterGroupName' - The name of the DB cluster parameter group.
newDBClusterParameterGroup ::
  DBClusterParameterGroup
newDBClusterParameterGroup =
  DBClusterParameterGroup'
    { dBClusterParameterGroupArn =
        Prelude.Nothing,
      dBParameterGroupFamily = Prelude.Nothing,
      description = Prelude.Nothing,
      dBClusterParameterGroupName = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) for the DB cluster parameter group.
dBClusterParameterGroup_dBClusterParameterGroupArn :: Lens.Lens' DBClusterParameterGroup (Prelude.Maybe Prelude.Text)
dBClusterParameterGroup_dBClusterParameterGroupArn = Lens.lens (\DBClusterParameterGroup' {dBClusterParameterGroupArn} -> dBClusterParameterGroupArn) (\s@DBClusterParameterGroup' {} a -> s {dBClusterParameterGroupArn = a} :: DBClusterParameterGroup)

-- | The name of the DB parameter group family that this DB cluster parameter
-- group is compatible with.
dBClusterParameterGroup_dBParameterGroupFamily :: Lens.Lens' DBClusterParameterGroup (Prelude.Maybe Prelude.Text)
dBClusterParameterGroup_dBParameterGroupFamily = Lens.lens (\DBClusterParameterGroup' {dBParameterGroupFamily} -> dBParameterGroupFamily) (\s@DBClusterParameterGroup' {} a -> s {dBParameterGroupFamily = a} :: DBClusterParameterGroup)

-- | Provides the customer-specified description for this DB cluster
-- parameter group.
dBClusterParameterGroup_description :: Lens.Lens' DBClusterParameterGroup (Prelude.Maybe Prelude.Text)
dBClusterParameterGroup_description = Lens.lens (\DBClusterParameterGroup' {description} -> description) (\s@DBClusterParameterGroup' {} a -> s {description = a} :: DBClusterParameterGroup)

-- | The name of the DB cluster parameter group.
dBClusterParameterGroup_dBClusterParameterGroupName :: Lens.Lens' DBClusterParameterGroup (Prelude.Maybe Prelude.Text)
dBClusterParameterGroup_dBClusterParameterGroupName = Lens.lens (\DBClusterParameterGroup' {dBClusterParameterGroupName} -> dBClusterParameterGroupName) (\s@DBClusterParameterGroup' {} a -> s {dBClusterParameterGroupName = a} :: DBClusterParameterGroup)

instance Prelude.FromXML DBClusterParameterGroup where
  parseXML x =
    DBClusterParameterGroup'
      Prelude.<$> (x Prelude..@? "DBClusterParameterGroupArn")
      Prelude.<*> (x Prelude..@? "DBParameterGroupFamily")
      Prelude.<*> (x Prelude..@? "Description")
      Prelude.<*> (x Prelude..@? "DBClusterParameterGroupName")

instance Prelude.Hashable DBClusterParameterGroup

instance Prelude.NFData DBClusterParameterGroup
