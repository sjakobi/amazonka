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
-- Module      : Network.AWS.RDS.Types.DBSnapshotAttributesResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBSnapshotAttributesResult where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.DBSnapshotAttribute

-- | Contains the results of a successful call to the
-- @DescribeDBSnapshotAttributes@ API action.
--
-- Manual DB snapshot attributes are used to authorize other AWS accounts
-- to copy or restore a manual DB snapshot. For more information, see the
-- @ModifyDBSnapshotAttribute@ API action.
--
-- /See:/ 'newDBSnapshotAttributesResult' smart constructor.
data DBSnapshotAttributesResult = DBSnapshotAttributesResult'
  { -- | The identifier of the manual DB snapshot that the attributes apply to.
    dBSnapshotIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The list of attributes and values for the manual DB snapshot.
    dBSnapshotAttributes :: Prelude.Maybe [DBSnapshotAttribute]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBSnapshotAttributesResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSnapshotIdentifier', 'dBSnapshotAttributesResult_dBSnapshotIdentifier' - The identifier of the manual DB snapshot that the attributes apply to.
--
-- 'dBSnapshotAttributes', 'dBSnapshotAttributesResult_dBSnapshotAttributes' - The list of attributes and values for the manual DB snapshot.
newDBSnapshotAttributesResult ::
  DBSnapshotAttributesResult
newDBSnapshotAttributesResult =
  DBSnapshotAttributesResult'
    { dBSnapshotIdentifier =
        Prelude.Nothing,
      dBSnapshotAttributes = Prelude.Nothing
    }

-- | The identifier of the manual DB snapshot that the attributes apply to.
dBSnapshotAttributesResult_dBSnapshotIdentifier :: Lens.Lens' DBSnapshotAttributesResult (Prelude.Maybe Prelude.Text)
dBSnapshotAttributesResult_dBSnapshotIdentifier = Lens.lens (\DBSnapshotAttributesResult' {dBSnapshotIdentifier} -> dBSnapshotIdentifier) (\s@DBSnapshotAttributesResult' {} a -> s {dBSnapshotIdentifier = a} :: DBSnapshotAttributesResult)

-- | The list of attributes and values for the manual DB snapshot.
dBSnapshotAttributesResult_dBSnapshotAttributes :: Lens.Lens' DBSnapshotAttributesResult (Prelude.Maybe [DBSnapshotAttribute])
dBSnapshotAttributesResult_dBSnapshotAttributes = Lens.lens (\DBSnapshotAttributesResult' {dBSnapshotAttributes} -> dBSnapshotAttributes) (\s@DBSnapshotAttributesResult' {} a -> s {dBSnapshotAttributes = a} :: DBSnapshotAttributesResult) Prelude.. Lens.mapping Prelude._Coerce

instance Prelude.FromXML DBSnapshotAttributesResult where
  parseXML x =
    DBSnapshotAttributesResult'
      Prelude.<$> (x Prelude..@? "DBSnapshotIdentifier")
      Prelude.<*> ( x Prelude..@? "DBSnapshotAttributes"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "DBSnapshotAttribute")
                  )

instance Prelude.Hashable DBSnapshotAttributesResult

instance Prelude.NFData DBSnapshotAttributesResult
