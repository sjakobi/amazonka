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
-- Module      : Network.AWS.S3.Types.InventoryEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.InventoryEncryption where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.SSEKMS
import Network.AWS.S3.Types.SSES3

-- | Contains the type of server-side encryption used to encrypt the
-- inventory results.
--
-- /See:/ 'newInventoryEncryption' smart constructor.
data InventoryEncryption = InventoryEncryption'
  { -- | Specifies the use of SSE-KMS to encrypt delivered inventory reports.
    sSEKMS :: Prelude.Maybe SSEKMS,
    -- | Specifies the use of SSE-S3 to encrypt delivered inventory reports.
    sSES3 :: Prelude.Maybe SSES3
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'InventoryEncryption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sSEKMS', 'inventoryEncryption_sSEKMS' - Specifies the use of SSE-KMS to encrypt delivered inventory reports.
--
-- 'sSES3', 'inventoryEncryption_sSES3' - Specifies the use of SSE-S3 to encrypt delivered inventory reports.
newInventoryEncryption ::
  InventoryEncryption
newInventoryEncryption =
  InventoryEncryption'
    { sSEKMS = Prelude.Nothing,
      sSES3 = Prelude.Nothing
    }

-- | Specifies the use of SSE-KMS to encrypt delivered inventory reports.
inventoryEncryption_sSEKMS :: Lens.Lens' InventoryEncryption (Prelude.Maybe SSEKMS)
inventoryEncryption_sSEKMS = Lens.lens (\InventoryEncryption' {sSEKMS} -> sSEKMS) (\s@InventoryEncryption' {} a -> s {sSEKMS = a} :: InventoryEncryption)

-- | Specifies the use of SSE-S3 to encrypt delivered inventory reports.
inventoryEncryption_sSES3 :: Lens.Lens' InventoryEncryption (Prelude.Maybe SSES3)
inventoryEncryption_sSES3 = Lens.lens (\InventoryEncryption' {sSES3} -> sSES3) (\s@InventoryEncryption' {} a -> s {sSES3 = a} :: InventoryEncryption)

instance Prelude.FromXML InventoryEncryption where
  parseXML x =
    InventoryEncryption'
      Prelude.<$> (x Prelude..@? "SSE-KMS")
      Prelude.<*> (x Prelude..@? "SSE-S3")

instance Prelude.Hashable InventoryEncryption

instance Prelude.NFData InventoryEncryption

instance Prelude.ToXML InventoryEncryption where
  toXML InventoryEncryption' {..} =
    Prelude.mconcat
      [ "SSE-KMS" Prelude.@= sSEKMS,
        "SSE-S3" Prelude.@= sSES3
      ]
