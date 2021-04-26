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
-- Module      : Network.AWS.RDS.Types.DBParameterGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBParameterGroupStatus where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The status of the DB parameter group.
--
-- This data type is used as a response element in the following actions:
--
-- -   @CreateDBInstance@
--
-- -   @CreateDBInstanceReadReplica@
--
-- -   @DeleteDBInstance@
--
-- -   @ModifyDBInstance@
--
-- -   @RebootDBInstance@
--
-- -   @RestoreDBInstanceFromDBSnapshot@
--
-- /See:/ 'newDBParameterGroupStatus' smart constructor.
data DBParameterGroupStatus = DBParameterGroupStatus'
  { -- | The name of the DB parameter group.
    dBParameterGroupName :: Prelude.Maybe Prelude.Text,
    -- | The status of parameter updates.
    parameterApplyStatus :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBParameterGroupStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBParameterGroupName', 'dBParameterGroupStatus_dBParameterGroupName' - The name of the DB parameter group.
--
-- 'parameterApplyStatus', 'dBParameterGroupStatus_parameterApplyStatus' - The status of parameter updates.
newDBParameterGroupStatus ::
  DBParameterGroupStatus
newDBParameterGroupStatus =
  DBParameterGroupStatus'
    { dBParameterGroupName =
        Prelude.Nothing,
      parameterApplyStatus = Prelude.Nothing
    }

-- | The name of the DB parameter group.
dBParameterGroupStatus_dBParameterGroupName :: Lens.Lens' DBParameterGroupStatus (Prelude.Maybe Prelude.Text)
dBParameterGroupStatus_dBParameterGroupName = Lens.lens (\DBParameterGroupStatus' {dBParameterGroupName} -> dBParameterGroupName) (\s@DBParameterGroupStatus' {} a -> s {dBParameterGroupName = a} :: DBParameterGroupStatus)

-- | The status of parameter updates.
dBParameterGroupStatus_parameterApplyStatus :: Lens.Lens' DBParameterGroupStatus (Prelude.Maybe Prelude.Text)
dBParameterGroupStatus_parameterApplyStatus = Lens.lens (\DBParameterGroupStatus' {parameterApplyStatus} -> parameterApplyStatus) (\s@DBParameterGroupStatus' {} a -> s {parameterApplyStatus = a} :: DBParameterGroupStatus)

instance Prelude.FromXML DBParameterGroupStatus where
  parseXML x =
    DBParameterGroupStatus'
      Prelude.<$> (x Prelude..@? "DBParameterGroupName")
      Prelude.<*> (x Prelude..@? "ParameterApplyStatus")

instance Prelude.Hashable DBParameterGroupStatus

instance Prelude.NFData DBParameterGroupStatus
