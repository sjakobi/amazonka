{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DeleteLaunchTemplateVersionsResponseErrorItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DeleteLaunchTemplateVersionsResponseErrorItem where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ResponseError
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a launch template version that could not be deleted.
--
--
--
-- /See:/ 'deleteLaunchTemplateVersionsResponseErrorItem' smart constructor.
data DeleteLaunchTemplateVersionsResponseErrorItem = DeleteLaunchTemplateVersionsResponseErrorItem'
  { _dltvreiResponseError ::
      !( Maybe
           ResponseError
       ),
    _dltvreiLaunchTemplateId ::
      !( Maybe
           Text
       ),
    _dltvreiLaunchTemplateName ::
      !( Maybe
           Text
       ),
    _dltvreiVersionNumber ::
      !( Maybe
           Integer
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

-- | Creates a value of 'DeleteLaunchTemplateVersionsResponseErrorItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dltvreiResponseError' - Information about the error.
--
-- * 'dltvreiLaunchTemplateId' - The ID of the launch template.
--
-- * 'dltvreiLaunchTemplateName' - The name of the launch template.
--
-- * 'dltvreiVersionNumber' - The version number of the launch template.
deleteLaunchTemplateVersionsResponseErrorItem ::
  DeleteLaunchTemplateVersionsResponseErrorItem
deleteLaunchTemplateVersionsResponseErrorItem =
  DeleteLaunchTemplateVersionsResponseErrorItem'
    { _dltvreiResponseError =
        Nothing,
      _dltvreiLaunchTemplateId =
        Nothing,
      _dltvreiLaunchTemplateName =
        Nothing,
      _dltvreiVersionNumber =
        Nothing
    }

-- | Information about the error.
dltvreiResponseError :: Lens' DeleteLaunchTemplateVersionsResponseErrorItem (Maybe ResponseError)
dltvreiResponseError = lens _dltvreiResponseError (\s a -> s {_dltvreiResponseError = a})

-- | The ID of the launch template.
dltvreiLaunchTemplateId :: Lens' DeleteLaunchTemplateVersionsResponseErrorItem (Maybe Text)
dltvreiLaunchTemplateId = lens _dltvreiLaunchTemplateId (\s a -> s {_dltvreiLaunchTemplateId = a})

-- | The name of the launch template.
dltvreiLaunchTemplateName :: Lens' DeleteLaunchTemplateVersionsResponseErrorItem (Maybe Text)
dltvreiLaunchTemplateName = lens _dltvreiLaunchTemplateName (\s a -> s {_dltvreiLaunchTemplateName = a})

-- | The version number of the launch template.
dltvreiVersionNumber :: Lens' DeleteLaunchTemplateVersionsResponseErrorItem (Maybe Integer)
dltvreiVersionNumber = lens _dltvreiVersionNumber (\s a -> s {_dltvreiVersionNumber = a})

instance
  FromXML
    DeleteLaunchTemplateVersionsResponseErrorItem
  where
  parseXML x =
    DeleteLaunchTemplateVersionsResponseErrorItem'
      <$> (x .@? "responseError")
      <*> (x .@? "launchTemplateId")
      <*> (x .@? "launchTemplateName")
      <*> (x .@? "versionNumber")

instance
  Hashable
    DeleteLaunchTemplateVersionsResponseErrorItem

instance
  NFData
    DeleteLaunchTemplateVersionsResponseErrorItem
