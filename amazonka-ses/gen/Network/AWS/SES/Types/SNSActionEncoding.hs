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
-- Module      : Network.AWS.SES.Types.SNSActionEncoding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.SNSActionEncoding
  ( SNSActionEncoding
      ( ..,
        SNSActionEncodingBASE64,
        SNSActionEncodingUTF8
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SNSActionEncoding = SNSActionEncoding'
  { fromSNSActionEncoding ::
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

pattern SNSActionEncodingBASE64 :: SNSActionEncoding
pattern SNSActionEncodingBASE64 = SNSActionEncoding' "Base64"

pattern SNSActionEncodingUTF8 :: SNSActionEncoding
pattern SNSActionEncodingUTF8 = SNSActionEncoding' "UTF-8"

{-# COMPLETE
  SNSActionEncodingBASE64,
  SNSActionEncodingUTF8,
  SNSActionEncoding'
  #-}

instance Prelude.FromText SNSActionEncoding where
  parser = SNSActionEncoding' Prelude.<$> Prelude.takeText

instance Prelude.ToText SNSActionEncoding where
  toText (SNSActionEncoding' x) = x

instance Prelude.Hashable SNSActionEncoding

instance Prelude.NFData SNSActionEncoding

instance Prelude.ToByteString SNSActionEncoding

instance Prelude.ToQuery SNSActionEncoding

instance Prelude.ToHeader SNSActionEncoding

instance Prelude.FromXML SNSActionEncoding where
  parseXML = Prelude.parseXMLText "SNSActionEncoding"
