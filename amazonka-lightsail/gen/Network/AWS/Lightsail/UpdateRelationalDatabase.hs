{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.UpdateRelationalDatabase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the update of one or more attributes of a database in Amazon Lightsail.
--
--
-- Updates are applied immediately, or in cases where the updates could result in an outage, are applied during the database's predefined maintenance window.
--
-- The @update relational database@ operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.UpdateRelationalDatabase
  ( -- * Creating a Request
    updateRelationalDatabase,
    UpdateRelationalDatabase,

    -- * Request Lenses
    urdPreferredBackupWindow,
    urdCaCertificateIdentifier,
    urdDisableBackupRetention,
    urdMasterUserPassword,
    urdPubliclyAccessible,
    urdPreferredMaintenanceWindow,
    urdEnableBackupRetention,
    urdRotateMasterUserPassword,
    urdApplyImmediately,
    urdRelationalDatabaseName,

    -- * Destructuring the Response
    updateRelationalDatabaseResponse,
    UpdateRelationalDatabaseResponse,

    -- * Response Lenses
    urdrrsOperations,
    urdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateRelationalDatabase' smart constructor.
data UpdateRelationalDatabase = UpdateRelationalDatabase'
  { _urdPreferredBackupWindow ::
      !(Maybe Text),
    _urdCaCertificateIdentifier ::
      !(Maybe Text),
    _urdDisableBackupRetention ::
      !(Maybe Bool),
    _urdMasterUserPassword ::
      !( Maybe
           (Sensitive Text)
       ),
    _urdPubliclyAccessible ::
      !(Maybe Bool),
    _urdPreferredMaintenanceWindow ::
      !(Maybe Text),
    _urdEnableBackupRetention ::
      !(Maybe Bool),
    _urdRotateMasterUserPassword ::
      !(Maybe Bool),
    _urdApplyImmediately ::
      !(Maybe Bool),
    _urdRelationalDatabaseName ::
      !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateRelationalDatabase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urdPreferredBackupWindow' - The daily time range during which automated backups are created for your database if automated backups are enabled. Constraints:     * Must be in the @hh24:mi-hh24:mi@ format. Example: @16:00-16:30@      * Specified in Coordinated Universal Time (UTC).     * Must not conflict with the preferred maintenance window.     * Must be at least 30 minutes.
--
-- * 'urdCaCertificateIdentifier' - Indicates the certificate that needs to be associated with the database.
--
-- * 'urdDisableBackupRetention' - When @true@ , disables automated backup retention for your database. Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database using the @create relational database snapshot@ operation. Updates are applied during the next maintenance window because this can result in an outage.
--
-- * 'urdMasterUserPassword' - The password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@". Constraints: Must contain 8 to 41 characters.
--
-- * 'urdPubliclyAccessible' - Specifies the accessibility options for your database. A value of @true@ specifies a database that is available to resources outside of your Lightsail account. A value of @false@ specifies a database that is available only to your Lightsail resources in the same region as your database.
--
-- * 'urdPreferredMaintenanceWindow' - The weekly time range during which system maintenance can occur on your database. The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. Constraints:     * Must be in the @ddd:hh24:mi-ddd:hh24:mi@ format.     * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.     * Must be at least 30 minutes.     * Specified in Coordinated Universal Time (UTC).     * Example: @Tue:17:00-Tue:17:30@
--
-- * 'urdEnableBackupRetention' - When @true@ , enables automated backup retention for your database. Updates are applied during the next maintenance window because this can result in an outage.
--
-- * 'urdRotateMasterUserPassword' - When @true@ , the master user password is changed to a new strong password generated by Lightsail. Use the @get relational database master user password@ operation to get the new password.
--
-- * 'urdApplyImmediately' - When @true@ , applies changes immediately. When @false@ , applies changes during the preferred maintenance window. Some changes may cause an outage. Default: @false@
--
-- * 'urdRelationalDatabaseName' - The name of your database to update.
updateRelationalDatabase ::
  -- | 'urdRelationalDatabaseName'
  Text ->
  UpdateRelationalDatabase
updateRelationalDatabase pRelationalDatabaseName_ =
  UpdateRelationalDatabase'
    { _urdPreferredBackupWindow =
        Nothing,
      _urdCaCertificateIdentifier = Nothing,
      _urdDisableBackupRetention = Nothing,
      _urdMasterUserPassword = Nothing,
      _urdPubliclyAccessible = Nothing,
      _urdPreferredMaintenanceWindow = Nothing,
      _urdEnableBackupRetention = Nothing,
      _urdRotateMasterUserPassword = Nothing,
      _urdApplyImmediately = Nothing,
      _urdRelationalDatabaseName =
        pRelationalDatabaseName_
    }

-- | The daily time range during which automated backups are created for your database if automated backups are enabled. Constraints:     * Must be in the @hh24:mi-hh24:mi@ format. Example: @16:00-16:30@      * Specified in Coordinated Universal Time (UTC).     * Must not conflict with the preferred maintenance window.     * Must be at least 30 minutes.
urdPreferredBackupWindow :: Lens' UpdateRelationalDatabase (Maybe Text)
urdPreferredBackupWindow = lens _urdPreferredBackupWindow (\s a -> s {_urdPreferredBackupWindow = a})

-- | Indicates the certificate that needs to be associated with the database.
urdCaCertificateIdentifier :: Lens' UpdateRelationalDatabase (Maybe Text)
urdCaCertificateIdentifier = lens _urdCaCertificateIdentifier (\s a -> s {_urdCaCertificateIdentifier = a})

-- | When @true@ , disables automated backup retention for your database. Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database using the @create relational database snapshot@ operation. Updates are applied during the next maintenance window because this can result in an outage.
urdDisableBackupRetention :: Lens' UpdateRelationalDatabase (Maybe Bool)
urdDisableBackupRetention = lens _urdDisableBackupRetention (\s a -> s {_urdDisableBackupRetention = a})

-- | The password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@". Constraints: Must contain 8 to 41 characters.
urdMasterUserPassword :: Lens' UpdateRelationalDatabase (Maybe Text)
urdMasterUserPassword = lens _urdMasterUserPassword (\s a -> s {_urdMasterUserPassword = a}) . mapping _Sensitive

-- | Specifies the accessibility options for your database. A value of @true@ specifies a database that is available to resources outside of your Lightsail account. A value of @false@ specifies a database that is available only to your Lightsail resources in the same region as your database.
urdPubliclyAccessible :: Lens' UpdateRelationalDatabase (Maybe Bool)
urdPubliclyAccessible = lens _urdPubliclyAccessible (\s a -> s {_urdPubliclyAccessible = a})

-- | The weekly time range during which system maintenance can occur on your database. The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. Constraints:     * Must be in the @ddd:hh24:mi-ddd:hh24:mi@ format.     * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.     * Must be at least 30 minutes.     * Specified in Coordinated Universal Time (UTC).     * Example: @Tue:17:00-Tue:17:30@
urdPreferredMaintenanceWindow :: Lens' UpdateRelationalDatabase (Maybe Text)
urdPreferredMaintenanceWindow = lens _urdPreferredMaintenanceWindow (\s a -> s {_urdPreferredMaintenanceWindow = a})

-- | When @true@ , enables automated backup retention for your database. Updates are applied during the next maintenance window because this can result in an outage.
urdEnableBackupRetention :: Lens' UpdateRelationalDatabase (Maybe Bool)
urdEnableBackupRetention = lens _urdEnableBackupRetention (\s a -> s {_urdEnableBackupRetention = a})

-- | When @true@ , the master user password is changed to a new strong password generated by Lightsail. Use the @get relational database master user password@ operation to get the new password.
urdRotateMasterUserPassword :: Lens' UpdateRelationalDatabase (Maybe Bool)
urdRotateMasterUserPassword = lens _urdRotateMasterUserPassword (\s a -> s {_urdRotateMasterUserPassword = a})

-- | When @true@ , applies changes immediately. When @false@ , applies changes during the preferred maintenance window. Some changes may cause an outage. Default: @false@
urdApplyImmediately :: Lens' UpdateRelationalDatabase (Maybe Bool)
urdApplyImmediately = lens _urdApplyImmediately (\s a -> s {_urdApplyImmediately = a})

-- | The name of your database to update.
urdRelationalDatabaseName :: Lens' UpdateRelationalDatabase Text
urdRelationalDatabaseName = lens _urdRelationalDatabaseName (\s a -> s {_urdRelationalDatabaseName = a})

instance AWSRequest UpdateRelationalDatabase where
  type
    Rs UpdateRelationalDatabase =
      UpdateRelationalDatabaseResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          UpdateRelationalDatabaseResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateRelationalDatabase

instance NFData UpdateRelationalDatabase

instance ToHeaders UpdateRelationalDatabase where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.UpdateRelationalDatabase" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateRelationalDatabase where
  toJSON UpdateRelationalDatabase' {..} =
    object
      ( catMaybes
          [ ("preferredBackupWindow" .=)
              <$> _urdPreferredBackupWindow,
            ("caCertificateIdentifier" .=)
              <$> _urdCaCertificateIdentifier,
            ("disableBackupRetention" .=)
              <$> _urdDisableBackupRetention,
            ("masterUserPassword" .=) <$> _urdMasterUserPassword,
            ("publiclyAccessible" .=) <$> _urdPubliclyAccessible,
            ("preferredMaintenanceWindow" .=)
              <$> _urdPreferredMaintenanceWindow,
            ("enableBackupRetention" .=)
              <$> _urdEnableBackupRetention,
            ("rotateMasterUserPassword" .=)
              <$> _urdRotateMasterUserPassword,
            ("applyImmediately" .=) <$> _urdApplyImmediately,
            Just
              ( "relationalDatabaseName"
                  .= _urdRelationalDatabaseName
              )
          ]
      )

instance ToPath UpdateRelationalDatabase where
  toPath = const "/"

instance ToQuery UpdateRelationalDatabase where
  toQuery = const mempty

-- | /See:/ 'updateRelationalDatabaseResponse' smart constructor.
data UpdateRelationalDatabaseResponse = UpdateRelationalDatabaseResponse'
  { _urdrrsOperations ::
      !( Maybe
           [Operation]
       ),
    _urdrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateRelationalDatabaseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urdrrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'urdrrsResponseStatus' - -- | The response status code.
updateRelationalDatabaseResponse ::
  -- | 'urdrrsResponseStatus'
  Int ->
  UpdateRelationalDatabaseResponse
updateRelationalDatabaseResponse pResponseStatus_ =
  UpdateRelationalDatabaseResponse'
    { _urdrrsOperations =
        Nothing,
      _urdrrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
urdrrsOperations :: Lens' UpdateRelationalDatabaseResponse [Operation]
urdrrsOperations = lens _urdrrsOperations (\s a -> s {_urdrrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
urdrrsResponseStatus :: Lens' UpdateRelationalDatabaseResponse Int
urdrrsResponseStatus = lens _urdrrsResponseStatus (\s a -> s {_urdrrsResponseStatus = a})

instance NFData UpdateRelationalDatabaseResponse
