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
-- Module      : Network.AWS.S3.Types.Payer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.Payer
  ( Payer
      ( ..,
        PayerBucketOwner,
        PayerRequester
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype Payer = Payer' {fromPayer :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern PayerBucketOwner :: Payer
pattern PayerBucketOwner = Payer' "BucketOwner"

pattern PayerRequester :: Payer
pattern PayerRequester = Payer' "Requester"

{-# COMPLETE
  PayerBucketOwner,
  PayerRequester,
  Payer'
  #-}

instance Prelude.FromText Payer where
  parser = Payer' Prelude.<$> Prelude.takeText

instance Prelude.ToText Payer where
  toText (Payer' x) = x

instance Prelude.Hashable Payer

instance Prelude.NFData Payer

instance Prelude.ToByteString Payer

instance Prelude.ToQuery Payer

instance Prelude.ToHeader Payer

instance Prelude.FromXML Payer where
  parseXML = Prelude.parseXMLText "Payer"

instance Prelude.ToXML Payer where
  toXML = Prelude.toXMLText
