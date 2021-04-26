{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.Types.Transferable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.Transferable
  ( Transferable
      ( ..,
        TransferableDONTKNOW,
        TransferableTRANSFERABLE,
        TransferableUNTRANSFERABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Whether the domain name can be transferred to Route 53.
--
-- You can transfer only domains that have a value of @TRANSFERABLE@ for
-- @Transferable@.
--
-- Valid values:
--
-- [TRANSFERABLE]
--     The domain name can be transferred to Route 53.
--
-- [UNTRANSFERRABLE]
--     The domain name can\'t be transferred to Route 53.
--
-- [DONT_KNOW]
--     Reserved for future use.
newtype Transferable = Transferable'
  { fromTransferable ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern TransferableDONTKNOW :: Transferable
pattern TransferableDONTKNOW = Transferable' "DONT_KNOW"

pattern TransferableTRANSFERABLE :: Transferable
pattern TransferableTRANSFERABLE = Transferable' "TRANSFERABLE"

pattern TransferableUNTRANSFERABLE :: Transferable
pattern TransferableUNTRANSFERABLE = Transferable' "UNTRANSFERABLE"

{-# COMPLETE
  TransferableDONTKNOW,
  TransferableTRANSFERABLE,
  TransferableUNTRANSFERABLE,
  Transferable'
  #-}

instance Prelude.FromText Transferable where
  parser = Transferable' Prelude.<$> Prelude.takeText

instance Prelude.ToText Transferable where
  toText (Transferable' x) = x

instance Prelude.Hashable Transferable

instance Prelude.NFData Transferable

instance Prelude.ToByteString Transferable

instance Prelude.ToQuery Transferable

instance Prelude.ToHeader Transferable

instance Prelude.FromJSON Transferable where
  parseJSON = Prelude.parseJSONText "Transferable"
