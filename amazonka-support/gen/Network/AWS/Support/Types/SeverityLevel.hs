{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Support.Types.SeverityLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Support.Types.SeverityLevel where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A code and name pair that represents the severity level of a support case. The available values depend on the support plan for the account. For more information, see <https://docs.aws.amazon.com/awssupport/latest/user/case-management.html#choosing-severity Choosing a severity> in the /AWS Support User Guide/ .
--
--
--
-- /See:/ 'severityLevel' smart constructor.
data SeverityLevel = SeverityLevel'
  { _slCode ::
      !(Maybe Text),
    _slName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SeverityLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slCode' - The code for case severity level. Valid values: @low@ | @normal@ | @high@ | @urgent@ | @critical@
--
-- * 'slName' - The name of the severity level that corresponds to the severity level code. For more information, see <https://docs.aws.amazon.com/awssupport/latest/user/case-management.html#choosing-severity Choosing a severity> in the /AWS Support User Guide/ .
severityLevel ::
  SeverityLevel
severityLevel =
  SeverityLevel'
    { _slCode = Nothing,
      _slName = Nothing
    }

-- | The code for case severity level. Valid values: @low@ | @normal@ | @high@ | @urgent@ | @critical@
slCode :: Lens' SeverityLevel (Maybe Text)
slCode = lens _slCode (\s a -> s {_slCode = a})

-- | The name of the severity level that corresponds to the severity level code. For more information, see <https://docs.aws.amazon.com/awssupport/latest/user/case-management.html#choosing-severity Choosing a severity> in the /AWS Support User Guide/ .
slName :: Lens' SeverityLevel (Maybe Text)
slName = lens _slName (\s a -> s {_slName = a})

instance FromJSON SeverityLevel where
  parseJSON =
    withObject
      "SeverityLevel"
      ( \x ->
          SeverityLevel' <$> (x .:? "code") <*> (x .:? "name")
      )

instance Hashable SeverityLevel

instance NFData SeverityLevel
