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
-- Module      : Network.AWS.RDS.Types.DBSecurityGroupMembership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBSecurityGroupMembership where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | This data type is used as a response element in the following actions:
--
-- -   @ModifyDBInstance@
--
-- -   @RebootDBInstance@
--
-- -   @RestoreDBInstanceFromDBSnapshot@
--
-- -   @RestoreDBInstanceToPointInTime@
--
-- /See:/ 'newDBSecurityGroupMembership' smart constructor.
data DBSecurityGroupMembership = DBSecurityGroupMembership'
  { -- | The status of the DB security group.
    status :: Prelude.Maybe Prelude.Text,
    -- | The name of the DB security group.
    dBSecurityGroupName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBSecurityGroupMembership' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'dBSecurityGroupMembership_status' - The status of the DB security group.
--
-- 'dBSecurityGroupName', 'dBSecurityGroupMembership_dBSecurityGroupName' - The name of the DB security group.
newDBSecurityGroupMembership ::
  DBSecurityGroupMembership
newDBSecurityGroupMembership =
  DBSecurityGroupMembership'
    { status =
        Prelude.Nothing,
      dBSecurityGroupName = Prelude.Nothing
    }

-- | The status of the DB security group.
dBSecurityGroupMembership_status :: Lens.Lens' DBSecurityGroupMembership (Prelude.Maybe Prelude.Text)
dBSecurityGroupMembership_status = Lens.lens (\DBSecurityGroupMembership' {status} -> status) (\s@DBSecurityGroupMembership' {} a -> s {status = a} :: DBSecurityGroupMembership)

-- | The name of the DB security group.
dBSecurityGroupMembership_dBSecurityGroupName :: Lens.Lens' DBSecurityGroupMembership (Prelude.Maybe Prelude.Text)
dBSecurityGroupMembership_dBSecurityGroupName = Lens.lens (\DBSecurityGroupMembership' {dBSecurityGroupName} -> dBSecurityGroupName) (\s@DBSecurityGroupMembership' {} a -> s {dBSecurityGroupName = a} :: DBSecurityGroupMembership)

instance Prelude.FromXML DBSecurityGroupMembership where
  parseXML x =
    DBSecurityGroupMembership'
      Prelude.<$> (x Prelude..@? "Status")
      Prelude.<*> (x Prelude..@? "DBSecurityGroupName")

instance Prelude.Hashable DBSecurityGroupMembership

instance Prelude.NFData DBSecurityGroupMembership
