{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.ValidationMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ValidationMessage where

import Network.AWS.ElasticBeanstalk.Types.ValidationSeverity
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An error or warning for a desired configuration option value.
--
--
--
-- /See:/ 'validationMessage' smart constructor.
data ValidationMessage = ValidationMessage'
  { _vmOptionName ::
      !(Maybe Text),
    _vmSeverity ::
      !(Maybe ValidationSeverity),
    _vmMessage :: !(Maybe Text),
    _vmNamespace :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ValidationMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmOptionName' - The name of the option.
--
-- * 'vmSeverity' - An indication of the severity of this message:     * @error@ : This message indicates that this is not a valid setting for an option.     * @warning@ : This message is providing information you should take into account.
--
-- * 'vmMessage' - A message describing the error or warning.
--
-- * 'vmNamespace' - The namespace to which the option belongs.
validationMessage ::
  ValidationMessage
validationMessage =
  ValidationMessage'
    { _vmOptionName = Nothing,
      _vmSeverity = Nothing,
      _vmMessage = Nothing,
      _vmNamespace = Nothing
    }

-- | The name of the option.
vmOptionName :: Lens' ValidationMessage (Maybe Text)
vmOptionName = lens _vmOptionName (\s a -> s {_vmOptionName = a})

-- | An indication of the severity of this message:     * @error@ : This message indicates that this is not a valid setting for an option.     * @warning@ : This message is providing information you should take into account.
vmSeverity :: Lens' ValidationMessage (Maybe ValidationSeverity)
vmSeverity = lens _vmSeverity (\s a -> s {_vmSeverity = a})

-- | A message describing the error or warning.
vmMessage :: Lens' ValidationMessage (Maybe Text)
vmMessage = lens _vmMessage (\s a -> s {_vmMessage = a})

-- | The namespace to which the option belongs.
vmNamespace :: Lens' ValidationMessage (Maybe Text)
vmNamespace = lens _vmNamespace (\s a -> s {_vmNamespace = a})

instance FromXML ValidationMessage where
  parseXML x =
    ValidationMessage'
      <$> (x .@? "OptionName")
      <*> (x .@? "Severity")
      <*> (x .@? "Message")
      <*> (x .@? "Namespace")

instance Hashable ValidationMessage

instance NFData ValidationMessage
