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
-- Module      : Network.AWS.S3.Types.RequestCharged
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.RequestCharged
  ( RequestCharged
      ( ..,
        RequestChargedRequester
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

-- | If present, indicates that the requester was successfully charged for
-- the request.
newtype RequestCharged = RequestCharged'
  { fromRequestCharged ::
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

pattern RequestChargedRequester :: RequestCharged
pattern RequestChargedRequester = RequestCharged' "requester"

{-# COMPLETE
  RequestChargedRequester,
  RequestCharged'
  #-}

instance Prelude.FromText RequestCharged where
  parser = RequestCharged' Prelude.<$> Prelude.takeText

instance Prelude.ToText RequestCharged where
  toText (RequestCharged' x) = x

instance Prelude.Hashable RequestCharged

instance Prelude.NFData RequestCharged

instance Prelude.ToByteString RequestCharged

instance Prelude.ToQuery RequestCharged

instance Prelude.ToHeader RequestCharged

instance Prelude.FromXML RequestCharged where
  parseXML = Prelude.parseXMLText "RequestCharged"
