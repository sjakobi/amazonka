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
-- Module      : Network.AWS.WorkSpaces.Types.Application
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.Application
  ( Application
      ( ..,
        ApplicationMicrosoftOffice2016,
        ApplicationMicrosoftOffice2019
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Application = Application'
  { fromApplication ::
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

pattern ApplicationMicrosoftOffice2016 :: Application
pattern ApplicationMicrosoftOffice2016 = Application' "Microsoft_Office_2016"

pattern ApplicationMicrosoftOffice2019 :: Application
pattern ApplicationMicrosoftOffice2019 = Application' "Microsoft_Office_2019"

{-# COMPLETE
  ApplicationMicrosoftOffice2016,
  ApplicationMicrosoftOffice2019,
  Application'
  #-}

instance Prelude.FromText Application where
  parser = Application' Prelude.<$> Prelude.takeText

instance Prelude.ToText Application where
  toText (Application' x) = x

instance Prelude.Hashable Application

instance Prelude.NFData Application

instance Prelude.ToByteString Application

instance Prelude.ToQuery Application

instance Prelude.ToHeader Application

instance Prelude.ToJSON Application where
  toJSON = Prelude.toJSONText
