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
-- Module      : Network.AWS.KinesisVideoMedia.Types.StartSelectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoMedia.Types.StartSelectorType
  ( StartSelectorType
      ( ..,
        StartSelectorTypeCONTINUATIONTOKEN,
        StartSelectorTypeEARLIEST,
        StartSelectorTypeFRAGMENTNUMBER,
        StartSelectorTypeNOW,
        StartSelectorTypePRODUCERTIMESTAMP,
        StartSelectorTypeSERVERTIMESTAMP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StartSelectorType = StartSelectorType'
  { fromStartSelectorType ::
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

pattern StartSelectorTypeCONTINUATIONTOKEN :: StartSelectorType
pattern StartSelectorTypeCONTINUATIONTOKEN = StartSelectorType' "CONTINUATION_TOKEN"

pattern StartSelectorTypeEARLIEST :: StartSelectorType
pattern StartSelectorTypeEARLIEST = StartSelectorType' "EARLIEST"

pattern StartSelectorTypeFRAGMENTNUMBER :: StartSelectorType
pattern StartSelectorTypeFRAGMENTNUMBER = StartSelectorType' "FRAGMENT_NUMBER"

pattern StartSelectorTypeNOW :: StartSelectorType
pattern StartSelectorTypeNOW = StartSelectorType' "NOW"

pattern StartSelectorTypePRODUCERTIMESTAMP :: StartSelectorType
pattern StartSelectorTypePRODUCERTIMESTAMP = StartSelectorType' "PRODUCER_TIMESTAMP"

pattern StartSelectorTypeSERVERTIMESTAMP :: StartSelectorType
pattern StartSelectorTypeSERVERTIMESTAMP = StartSelectorType' "SERVER_TIMESTAMP"

{-# COMPLETE
  StartSelectorTypeCONTINUATIONTOKEN,
  StartSelectorTypeEARLIEST,
  StartSelectorTypeFRAGMENTNUMBER,
  StartSelectorTypeNOW,
  StartSelectorTypePRODUCERTIMESTAMP,
  StartSelectorTypeSERVERTIMESTAMP,
  StartSelectorType'
  #-}

instance Prelude.FromText StartSelectorType where
  parser = StartSelectorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText StartSelectorType where
  toText (StartSelectorType' x) = x

instance Prelude.Hashable StartSelectorType

instance Prelude.NFData StartSelectorType

instance Prelude.ToByteString StartSelectorType

instance Prelude.ToQuery StartSelectorType

instance Prelude.ToHeader StartSelectorType

instance Prelude.ToJSON StartSelectorType where
  toJSON = Prelude.toJSONText
