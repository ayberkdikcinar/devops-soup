import urllib.request as urllib2

def addCustomGrainsEC2():
  try:
    grains = {}
    
    base_url = 'http://169.254.169.254/latest/meta-data'
    
    instance_id = urllib2.urlopen(base_url+'/instance-id')
  
    instance_type = urllib2.urlopen(base_url+'/instance-type')
    instance_id = instance_id.read().decode('utf-8')
    instance_type = instance_type.read().decode('utf-8')
    cloud_info = {
      'provider':'Amazon',
      'instance_id':instance_id,
      'instance_type':instance_type,
    }

    grains['cloud_info'] = cloud_info 
    print(grains)
    return grains
  except Exception as ex:
    print(ex)


if __name__ == '__main__':
  addCustomGrainsEC2()