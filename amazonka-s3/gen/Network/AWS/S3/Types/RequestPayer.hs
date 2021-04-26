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
-- Module      : Network.AWS.S3.Types.RequestPayer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.RequestPayer
  ( RequestPayer
      ( ..,
        RequestPayerRequester
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

-- | Confirms that the requester knows that they will be charged for the
-- request. Bucket owners need not specify this parameter in their
-- requests. For information about downloading objects from requester pays
-- buckets, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html Downloading Objects in Requestor Pays Buckets>
-- in the /Amazon S3 Developer Guide/.
newtype RequestPayer = RequestPayer'
  { fromRequestPayer ::
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

pattern RequestPayerRequester :: RequestPayer
pattern RequestPayerRequester = RequestPayer' "requester"

{-# COMPLETE
  RequestPayerRequester,
  RequestPayer'
  #-}

instance Prelude.FromText RequestPayer where
  parser = RequestPayer' Prelude.<$> Prelude.takeText

instance Prelude.ToText RequestPayer where
  toText (RequestPayer' x) = x

instance Prelude.Hashable RequestPayer

instance Prelude.NFData RequestPayer

instance Prelude.ToByteString RequestPayer

instance Prelude.ToQuery RequestPayer

instance Prelude.ToHeader RequestPayer

instance Prelude.ToXML RequestPayer where
  toXML = Prelude.toXMLText
