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
-- Module      : Network.AWS.RDS.Types.DBParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBParameterGroup where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the details of an Amazon RDS DB parameter group.
--
-- This data type is used as a response element in the
-- @DescribeDBParameterGroups@ action.
--
-- /See:/ 'newDBParameterGroup' smart constructor.
data DBParameterGroup = DBParameterGroup'
  { -- | The Amazon Resource Name (ARN) for the DB parameter group.
    dBParameterGroupArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the DB parameter group.
    dBParameterGroupName :: Prelude.Maybe Prelude.Text,
    -- | The name of the DB parameter group family that this DB parameter group
    -- is compatible with.
    dBParameterGroupFamily :: Prelude.Maybe Prelude.Text,
    -- | Provides the customer-specified description for this DB parameter group.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBParameterGroupArn', 'dBParameterGroup_dBParameterGroupArn' - The Amazon Resource Name (ARN) for the DB parameter group.
--
-- 'dBParameterGroupName', 'dBParameterGroup_dBParameterGroupName' - The name of the DB parameter group.
--
-- 'dBParameterGroupFamily', 'dBParameterGroup_dBParameterGroupFamily' - The name of the DB parameter group family that this DB parameter group
-- is compatible with.
--
-- 'description', 'dBParameterGroup_description' - Provides the customer-specified description for this DB parameter group.
newDBParameterGroup ::
  DBParameterGroup
newDBParameterGroup =
  DBParameterGroup'
    { dBParameterGroupArn =
        Prelude.Nothing,
      dBParameterGroupName = Prelude.Nothing,
      dBParameterGroupFamily = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) for the DB parameter group.
dBParameterGroup_dBParameterGroupArn :: Lens.Lens' DBParameterGroup (Prelude.Maybe Prelude.Text)
dBParameterGroup_dBParameterGroupArn = Lens.lens (\DBParameterGroup' {dBParameterGroupArn} -> dBParameterGroupArn) (\s@DBParameterGroup' {} a -> s {dBParameterGroupArn = a} :: DBParameterGroup)

-- | The name of the DB parameter group.
dBParameterGroup_dBParameterGroupName :: Lens.Lens' DBParameterGroup (Prelude.Maybe Prelude.Text)
dBParameterGroup_dBParameterGroupName = Lens.lens (\DBParameterGroup' {dBParameterGroupName} -> dBParameterGroupName) (\s@DBParameterGroup' {} a -> s {dBParameterGroupName = a} :: DBParameterGroup)

-- | The name of the DB parameter group family that this DB parameter group
-- is compatible with.
dBParameterGroup_dBParameterGroupFamily :: Lens.Lens' DBParameterGroup (Prelude.Maybe Prelude.Text)
dBParameterGroup_dBParameterGroupFamily = Lens.lens (\DBParameterGroup' {dBParameterGroupFamily} -> dBParameterGroupFamily) (\s@DBParameterGroup' {} a -> s {dBParameterGroupFamily = a} :: DBParameterGroup)

-- | Provides the customer-specified description for this DB parameter group.
dBParameterGroup_description :: Lens.Lens' DBParameterGroup (Prelude.Maybe Prelude.Text)
dBParameterGroup_description = Lens.lens (\DBParameterGroup' {description} -> description) (\s@DBParameterGroup' {} a -> s {description = a} :: DBParameterGroup)

instance Prelude.FromXML DBParameterGroup where
  parseXML x =
    DBParameterGroup'
      Prelude.<$> (x Prelude..@? "DBParameterGroupArn")
      Prelude.<*> (x Prelude..@? "DBParameterGroupName")
      Prelude.<*> (x Prelude..@? "DBParameterGroupFamily")
      Prelude.<*> (x Prelude..@? "Description")

instance Prelude.Hashable DBParameterGroup

instance Prelude.NFData DBParameterGroup
