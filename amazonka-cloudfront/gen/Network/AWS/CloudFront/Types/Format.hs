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
-- Module      : Network.AWS.CloudFront.Types.Format
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.Format
  ( Format
      ( ..,
        FormatURLEncoded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Format = Format' {fromFormat :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern FormatURLEncoded :: Format
pattern FormatURLEncoded = Format' "URLEncoded"

{-# COMPLETE
  FormatURLEncoded,
  Format'
  #-}

instance Prelude.FromText Format where
  parser = Format' Prelude.<$> Prelude.takeText

instance Prelude.ToText Format where
  toText (Format' x) = x

instance Prelude.Hashable Format

instance Prelude.NFData Format

instance Prelude.ToByteString Format

instance Prelude.ToQuery Format

instance Prelude.ToHeader Format

instance Prelude.FromXML Format where
  parseXML = Prelude.parseXMLText "Format"

instance Prelude.ToXML Format where
  toXML = Prelude.toXMLText
