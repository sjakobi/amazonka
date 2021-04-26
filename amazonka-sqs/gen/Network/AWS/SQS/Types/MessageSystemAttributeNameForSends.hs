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
-- Module      : Network.AWS.SQS.Types.MessageSystemAttributeNameForSends
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SQS.Types.MessageSystemAttributeNameForSends
  ( MessageSystemAttributeNameForSends
      ( ..,
        MessageSystemAttributeNameForSendsAWSTraceHeader
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MessageSystemAttributeNameForSends = MessageSystemAttributeNameForSends'
  { fromMessageSystemAttributeNameForSends ::
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

pattern MessageSystemAttributeNameForSendsAWSTraceHeader :: MessageSystemAttributeNameForSends
pattern MessageSystemAttributeNameForSendsAWSTraceHeader = MessageSystemAttributeNameForSends' "AWSTraceHeader"

{-# COMPLETE
  MessageSystemAttributeNameForSendsAWSTraceHeader,
  MessageSystemAttributeNameForSends'
  #-}

instance Prelude.FromText MessageSystemAttributeNameForSends where
  parser = MessageSystemAttributeNameForSends' Prelude.<$> Prelude.takeText

instance Prelude.ToText MessageSystemAttributeNameForSends where
  toText (MessageSystemAttributeNameForSends' x) = x

instance Prelude.Hashable MessageSystemAttributeNameForSends

instance Prelude.NFData MessageSystemAttributeNameForSends

instance Prelude.ToByteString MessageSystemAttributeNameForSends

instance Prelude.ToQuery MessageSystemAttributeNameForSends

instance Prelude.ToHeader MessageSystemAttributeNameForSends
