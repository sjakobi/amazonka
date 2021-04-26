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
-- Module      : Network.AWS.S3.Types.Grantee
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.Grantee where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.Type

-- | Container for the person being granted permissions.
--
-- /See:/ 'newGrantee' smart constructor.
data Grantee = Grantee'
  { -- | URI of the grantee group.
    uRI :: Prelude.Maybe Prelude.Text,
    -- | The canonical user ID of the grantee.
    iD :: Prelude.Maybe Prelude.Text,
    -- | Screen name of the grantee.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | Email address of the grantee.
    --
    -- Using email addresses to specify a grantee is only supported in the
    -- following AWS Regions:
    --
    -- -   US East (N. Virginia)
    --
    -- -   US West (N. California)
    --
    -- -   US West (Oregon)
    --
    -- -   Asia Pacific (Singapore)
    --
    -- -   Asia Pacific (Sydney)
    --
    -- -   Asia Pacific (Tokyo)
    --
    -- -   Europe (Ireland)
    --
    -- -   South America (São Paulo)
    --
    -- For a list of all the Amazon S3 supported Regions and endpoints, see
    -- <https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region Regions and Endpoints>
    -- in the AWS General Reference.
    emailAddress :: Prelude.Maybe Prelude.Text,
    -- | Type of grantee
    type' :: Type
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Grantee' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'uRI', 'grantee_uRI' - URI of the grantee group.
--
-- 'iD', 'grantee_iD' - The canonical user ID of the grantee.
--
-- 'displayName', 'grantee_displayName' - Screen name of the grantee.
--
-- 'emailAddress', 'grantee_emailAddress' - Email address of the grantee.
--
-- Using email addresses to specify a grantee is only supported in the
-- following AWS Regions:
--
-- -   US East (N. Virginia)
--
-- -   US West (N. California)
--
-- -   US West (Oregon)
--
-- -   Asia Pacific (Singapore)
--
-- -   Asia Pacific (Sydney)
--
-- -   Asia Pacific (Tokyo)
--
-- -   Europe (Ireland)
--
-- -   South America (São Paulo)
--
-- For a list of all the Amazon S3 supported Regions and endpoints, see
-- <https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region Regions and Endpoints>
-- in the AWS General Reference.
--
-- 'type'', 'grantee_type' - Type of grantee
newGrantee ::
  -- | 'type''
  Type ->
  Grantee
newGrantee pType_ =
  Grantee'
    { uRI = Prelude.Nothing,
      iD = Prelude.Nothing,
      displayName = Prelude.Nothing,
      emailAddress = Prelude.Nothing,
      type' = pType_
    }

-- | URI of the grantee group.
grantee_uRI :: Lens.Lens' Grantee (Prelude.Maybe Prelude.Text)
grantee_uRI = Lens.lens (\Grantee' {uRI} -> uRI) (\s@Grantee' {} a -> s {uRI = a} :: Grantee)

-- | The canonical user ID of the grantee.
grantee_iD :: Lens.Lens' Grantee (Prelude.Maybe Prelude.Text)
grantee_iD = Lens.lens (\Grantee' {iD} -> iD) (\s@Grantee' {} a -> s {iD = a} :: Grantee)

-- | Screen name of the grantee.
grantee_displayName :: Lens.Lens' Grantee (Prelude.Maybe Prelude.Text)
grantee_displayName = Lens.lens (\Grantee' {displayName} -> displayName) (\s@Grantee' {} a -> s {displayName = a} :: Grantee)

-- | Email address of the grantee.
--
-- Using email addresses to specify a grantee is only supported in the
-- following AWS Regions:
--
-- -   US East (N. Virginia)
--
-- -   US West (N. California)
--
-- -   US West (Oregon)
--
-- -   Asia Pacific (Singapore)
--
-- -   Asia Pacific (Sydney)
--
-- -   Asia Pacific (Tokyo)
--
-- -   Europe (Ireland)
--
-- -   South America (São Paulo)
--
-- For a list of all the Amazon S3 supported Regions and endpoints, see
-- <https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region Regions and Endpoints>
-- in the AWS General Reference.
grantee_emailAddress :: Lens.Lens' Grantee (Prelude.Maybe Prelude.Text)
grantee_emailAddress = Lens.lens (\Grantee' {emailAddress} -> emailAddress) (\s@Grantee' {} a -> s {emailAddress = a} :: Grantee)

-- | Type of grantee
grantee_type :: Lens.Lens' Grantee Type
grantee_type = Lens.lens (\Grantee' {type'} -> type') (\s@Grantee' {} a -> s {type' = a} :: Grantee)

instance Prelude.FromXML Grantee where
  parseXML x =
    Grantee'
      Prelude.<$> (x Prelude..@? "URI")
      Prelude.<*> (x Prelude..@? "ID")
      Prelude.<*> (x Prelude..@? "DisplayName")
      Prelude.<*> (x Prelude..@? "EmailAddress")
      Prelude.<*> (x Prelude..@ "xsi:type")

instance Prelude.Hashable Grantee

instance Prelude.NFData Grantee

instance Prelude.ToXML Grantee where
  toXML Grantee' {..} =
    Prelude.mconcat
      [ "URI" Prelude.@= uRI,
        "ID" Prelude.@= iD,
        "DisplayName" Prelude.@= displayName,
        "EmailAddress" Prelude.@= emailAddress,
        "xsi:type" Prelude.@@= type'
      ]
