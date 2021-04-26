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
-- Module      : Network.AWS.RDS.Types.DBClusterSnapshotAttributesResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBClusterSnapshotAttributesResult where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.DBClusterSnapshotAttribute

-- | Contains the results of a successful call to the
-- @DescribeDBClusterSnapshotAttributes@ API action.
--
-- Manual DB cluster snapshot attributes are used to authorize other AWS
-- accounts to copy or restore a manual DB cluster snapshot. For more
-- information, see the @ModifyDBClusterSnapshotAttribute@ API action.
--
-- /See:/ 'newDBClusterSnapshotAttributesResult' smart constructor.
data DBClusterSnapshotAttributesResult = DBClusterSnapshotAttributesResult'
  { -- | The list of attributes and values for the manual DB cluster snapshot.
    dBClusterSnapshotAttributes :: Prelude.Maybe [DBClusterSnapshotAttribute],
    -- | The identifier of the manual DB cluster snapshot that the attributes
    -- apply to.
    dBClusterSnapshotIdentifier :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBClusterSnapshotAttributesResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBClusterSnapshotAttributes', 'dBClusterSnapshotAttributesResult_dBClusterSnapshotAttributes' - The list of attributes and values for the manual DB cluster snapshot.
--
-- 'dBClusterSnapshotIdentifier', 'dBClusterSnapshotAttributesResult_dBClusterSnapshotIdentifier' - The identifier of the manual DB cluster snapshot that the attributes
-- apply to.
newDBClusterSnapshotAttributesResult ::
  DBClusterSnapshotAttributesResult
newDBClusterSnapshotAttributesResult =
  DBClusterSnapshotAttributesResult'
    { dBClusterSnapshotAttributes =
        Prelude.Nothing,
      dBClusterSnapshotIdentifier =
        Prelude.Nothing
    }

-- | The list of attributes and values for the manual DB cluster snapshot.
dBClusterSnapshotAttributesResult_dBClusterSnapshotAttributes :: Lens.Lens' DBClusterSnapshotAttributesResult (Prelude.Maybe [DBClusterSnapshotAttribute])
dBClusterSnapshotAttributesResult_dBClusterSnapshotAttributes = Lens.lens (\DBClusterSnapshotAttributesResult' {dBClusterSnapshotAttributes} -> dBClusterSnapshotAttributes) (\s@DBClusterSnapshotAttributesResult' {} a -> s {dBClusterSnapshotAttributes = a} :: DBClusterSnapshotAttributesResult) Prelude.. Lens.mapping Prelude._Coerce

-- | The identifier of the manual DB cluster snapshot that the attributes
-- apply to.
dBClusterSnapshotAttributesResult_dBClusterSnapshotIdentifier :: Lens.Lens' DBClusterSnapshotAttributesResult (Prelude.Maybe Prelude.Text)
dBClusterSnapshotAttributesResult_dBClusterSnapshotIdentifier = Lens.lens (\DBClusterSnapshotAttributesResult' {dBClusterSnapshotIdentifier} -> dBClusterSnapshotIdentifier) (\s@DBClusterSnapshotAttributesResult' {} a -> s {dBClusterSnapshotIdentifier = a} :: DBClusterSnapshotAttributesResult)

instance
  Prelude.FromXML
    DBClusterSnapshotAttributesResult
  where
  parseXML x =
    DBClusterSnapshotAttributesResult'
      Prelude.<$> ( x Prelude..@? "DBClusterSnapshotAttributes"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "DBClusterSnapshotAttribute")
                  )
      Prelude.<*> (x Prelude..@? "DBClusterSnapshotIdentifier")

instance
  Prelude.Hashable
    DBClusterSnapshotAttributesResult

instance
  Prelude.NFData
    DBClusterSnapshotAttributesResult
