{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.UserDataValidationParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.UserDataValidationParameters where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.ScriptType
import Network.AWS.SMS.Types.Source

-- | Contains validation parameters.
--
--
--
-- /See:/ 'userDataValidationParameters' smart constructor.
data UserDataValidationParameters = UserDataValidationParameters'
  { _udvpSource ::
      !( Maybe
           Source
       ),
    _udvpScriptType ::
      !( Maybe
           ScriptType
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UserDataValidationParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udvpSource' - The location of the validation script.
--
-- * 'udvpScriptType' - The type of validation script.
userDataValidationParameters ::
  UserDataValidationParameters
userDataValidationParameters =
  UserDataValidationParameters'
    { _udvpSource =
        Nothing,
      _udvpScriptType = Nothing
    }

-- | The location of the validation script.
udvpSource :: Lens' UserDataValidationParameters (Maybe Source)
udvpSource = lens _udvpSource (\s a -> s {_udvpSource = a})

-- | The type of validation script.
udvpScriptType :: Lens' UserDataValidationParameters (Maybe ScriptType)
udvpScriptType = lens _udvpScriptType (\s a -> s {_udvpScriptType = a})

instance FromJSON UserDataValidationParameters where
  parseJSON =
    withObject
      "UserDataValidationParameters"
      ( \x ->
          UserDataValidationParameters'
            <$> (x .:? "source") <*> (x .:? "scriptType")
      )

instance Hashable UserDataValidationParameters

instance NFData UserDataValidationParameters

instance ToJSON UserDataValidationParameters where
  toJSON UserDataValidationParameters' {..} =
    object
      ( catMaybes
          [ ("source" .=) <$> _udvpSource,
            ("scriptType" .=) <$> _udvpScriptType
          ]
      )
