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
-- Module      : Network.AWS.RDS.Types.IPRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.IPRange where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | This data type is used as a response element in the
-- @DescribeDBSecurityGroups@ action.
--
-- /See:/ 'newIPRange' smart constructor.
data IPRange = IPRange'
  { -- | Specifies the status of the IP range. Status can be \"authorizing\",
    -- \"authorized\", \"revoking\", and \"revoked\".
    status :: Prelude.Maybe Prelude.Text,
    -- | Specifies the IP range.
    cIDRIP :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'IPRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'iPRange_status' - Specifies the status of the IP range. Status can be \"authorizing\",
-- \"authorized\", \"revoking\", and \"revoked\".
--
-- 'cIDRIP', 'iPRange_cIDRIP' - Specifies the IP range.
newIPRange ::
  IPRange
newIPRange =
  IPRange'
    { status = Prelude.Nothing,
      cIDRIP = Prelude.Nothing
    }

-- | Specifies the status of the IP range. Status can be \"authorizing\",
-- \"authorized\", \"revoking\", and \"revoked\".
iPRange_status :: Lens.Lens' IPRange (Prelude.Maybe Prelude.Text)
iPRange_status = Lens.lens (\IPRange' {status} -> status) (\s@IPRange' {} a -> s {status = a} :: IPRange)

-- | Specifies the IP range.
iPRange_cIDRIP :: Lens.Lens' IPRange (Prelude.Maybe Prelude.Text)
iPRange_cIDRIP = Lens.lens (\IPRange' {cIDRIP} -> cIDRIP) (\s@IPRange' {} a -> s {cIDRIP = a} :: IPRange)

instance Prelude.FromXML IPRange where
  parseXML x =
    IPRange'
      Prelude.<$> (x Prelude..@? "Status")
      Prelude.<*> (x Prelude..@? "CIDRIP")

instance Prelude.Hashable IPRange

instance Prelude.NFData IPRange
